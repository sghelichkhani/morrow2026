"""Generate and submit PBS job scripts for Richards scaling tests on Gadi.

Generates one PBS script per (case, solver, scale) combination and optionally
submits them via qsub. All output goes to a results/ directory tree.

Usage:
    # Generate job scripts only (dry run):
    python submit_jobs.py --dry-run

    # Generate and submit smoke tests (1 solver, 1 node each):
    python submit_jobs.py --phase smoke

    # Generate and submit full single-node sweep (all 12 solvers):
    python submit_jobs.py --phase sweep

    # Generate and submit medium + large scale runs:
    python submit_jobs.py --phase scaling
"""

import argparse
import subprocess
from datetime import datetime, timezone
from pathlib import Path

# Solvers that require a mesh hierarchy for geometric multigrid.
# GMG-family solvers need the full 3-level hierarchy (paper's recipe).
# vlumping_hmg only needs L=1 for its initial Phase A sweep -- a deeper
# base hierarchy doesn't survive the "at least 20 coarse cells per rank"
# safety floor on any of the current cases, so we start at the minimum
# that exercises the algorithm.
GMG3_SOLVERS = {"gmg", "ngmres_gmg", "qn_gmg"}
HMG1_SOLVERS = {
    "vlumping_hmg",
    "vlumping_hmg_lag3",
    "vlumping_hmg_bjacilu",
    "vlumping_hmg_bjacilu_lag3",
    "vlumping_hmg_rich",
    "vlumping_hmg_rich_lag3",
}
GMG_SOLVERS = GMG3_SOLVERS | HMG1_SOLVERS

ALL_SOLVERS = [
    "gmg", "boomeramg", "gamg_asm", "vlumping", "gamg",
    "bjacobi", "sor",
    "ngmres_gmg", "qn_gmg",
    # VLumping parameter variants
    "vlumping_1sweep", "vlumping_4sweep", "vlumping_richardson",
    "vlumping_sor", "vlumping_inexact",
]

# Paper-shown solver set. This includes each solver displayed in the outcome
# table, even when the solver is omitted from a scaling figure. The ablation
# variants (vlumping_1sweep/_4sweep/_richardson/_sor/_linesmooth,
# ngmres_gmg, and plain `vlumping`) are not displayed in the paper.
PAPER_SOLVERS = [
    "sor", "bjacobi", "gamg", "gmg", "boomeramg",
    "vlumping_inexact", "vlumping_hmg",
]

# Round 3 Cockett comparison, restricted to the paper-shown set.
ROUND3_SOLVERS = list(PAPER_SOLVERS)

# DQ2 (degree-2) Cockett re-run: the iterative solvers that actually scale.
# Run at the same sweep/medium/large scales as round3 but with degree-2
# elements, writing to results/cockett/<solver>/<scale>_dq2.* so the
# existing DQ1 record is left untouched.
COCKETT_DQ2_SOLVERS = [
    "vlumping_inexact",  # production preset (g-adopt's shipped `vlumping`)
    "vlumping",          # baseline VLumping
    "boomeramg",         # paper's tuned BoomerAMG
    "gmg",               # geometric multigrid, horizontal coarsening
]

# Murrumbidgee vertical weak scaling: 4 solvers representing different
# preconditioner families. Tests weak scaling while simultaneously
# increasing aspect ratio (the ultimate anisotropy stress test).
ROUND3_MURR_SOLVERS = list(PAPER_SOLVERS)

# Murrumbidgee horizontal weak scaling: replicates the paper's main scaling
# figure (Morrow et al. 2026, Fig. murrumbidgee_weak). Fixed 300 layers,
# vary horizontal resolution to keep ~40M DOF/node. The paper tested GMG-H,
# GAMG, BJacobi; we add VLumping and BoomerAMG.
ROUND3_MURR_HORIZ_SOLVERS = list(PAPER_SOLVERS)

# Matched setup-lag and fine-smoother experiment. The two unchanged presets
# are rerun as controls with the same source and Firedrake installation.
REVIEWER_SOLVERS = [
    "vlumping_inexact",
    "vlumping_inexact_lag3",
    "vlumping_hmg",
    "vlumping_hmg_lag3",
    "vlumping_hmg_bjacilu",
    "vlumping_hmg_bjacilu_lag3",
]

# Setup-cost campaign (2026-08-21). Two changes to the VLumping presets,
# tested separately and together: a Richardson fine smoother, which removes
# the per-Newton-step Chebyshev eigenvalue estimation, and a private
# snapshot of the operator, which lags the Galerkin product and the coarse
# factorisation. The unchanged `vlumping_inexact` and `vlumping_hmg` runs at
# h8 from 2026-08-20 are the controls; the g-adopt change defaults to no lag
# and leaves their code path unaltered. See
# NOTES/2026-08-21-SPEEDING-UP-VLUMPING-SUGGESTIONS.md.
RICH_SOLVERS = [
    "vlumping_inexact_rich",
    "vlumping_inexact_rich_lag3",
    "vlumping_hmg_rich",
    "vlumping_hmg_rich_lag3",
]

# Gadi PBS configuration
PBS_PROJECT = "xd2"
PBS_QUEUE = "normalsr"
QSUB = "/opt/pbs/default/bin/qsub"
CPUS_PER_NODE = 104  # Sapphire Rapids nodes on normalsr queue
CPUS_SINGLE_NODE = 104  # Full Sapphire Rapids node (was 48 for Cascade Lake)
# gdata/xd2 (on the gdata1b filesystem) dropped: the drivers read the repo +
# richardson/gwassess/omega from scratch/xd2 and modules from gdata/fp50, so
# gdata/xd2 is unused and requesting it hangs jobs whenever gdata1b is under
# maintenance.
STORAGE = "scratch/xd2+gdata/fp50"

# Paths on Gadi
GADOPT_PATH = "/scratch/xd2/sg8812/g-adopt-worktrees/sghelichkhani/richardson"
GWASSESS_PATH = "/scratch/xd2/sg8812/gwassess"
# omega provides the Murrumbidgee mesh builder (SurfaceMesh / build_mesh_hierarchy).
# Flat-layout checkout: putting the repo root on PYTHONPATH is enough.
OMEGA_PATH = "/scratch/xd2/sg8812/omega"
# The scaling drivers (with the full solver-preset inventory under
# parallel_scaling/solvers/) live in *this* repo, not the g-adopt
# richardson worktree — the g-adopt copy was pruned to the four
# canonical presets when they moved to the public API.
MORROW_REPO = "/scratch/xd2/sg8812/morrow2026"
SCALING_DIR = f"{MORROW_REPO}/parallel_scaling"
DATA_DIR = f"{SCALING_DIR}/murrumbidgee_data"


def refinement_levels(solver_name):
    if solver_name in GMG3_SOLVERS:
        return 3
    if solver_name in HMG1_SOLVERS:
        return 1
    return 0


def cockett_cases():
    """Return Cockett case definitions for each scale."""
    return {
        "smoke": {"nodes": 1, "nx": 64, "nz": 78, "steps": 10},
        "sweep": {"nodes": 1, "nx": 120, "nz": 156, "steps": 30},
        "medium": {"nodes": 2, "nx": 152, "nz": 196, "steps": 30},
        "large": {"nodes": 8, "nx": 240, "nz": 312, "steps": 30},
        # Alias for the DQ2 rerun, matching parse_results.py's post-relabel
        # "huge" (8N/144M DQ1 mesh) — see COCKETT_DQ2_SOLVERS below.
        "huge": {"nodes": 8, "nx": 240, "nz": 312, "steps": 30},
    }


def murrumbidgee_cases():
    """Murrumbidgee vertical weak scaling: fixed Δx=1775m, layers scale with nodes.

    Vertical weak scaling that simultaneously increases aspect ratio. Horizontal
    resolution is fixed at 1775m (paper resolution, ~22k triangles); vertical
    layers increase proportionally with node count (150 layers/node). DOF/core
    stays ~190k on full Sapphire Rapids nodes (104 CPUs/node), well above the
    50k Firedrake minimum.

    Smoke-tested at 1775m / 150 layers / 1 node: 75 steps, 0 failures,
    7.64 s/step, 1056 MB, 30 days sim time.

    The 2-node / 300-layer point matches the paper's resolution exactly.
    """
    return {
        "smoke": {"nodes": 1, "horiz_res": 1775, "layers": 150},
        "sweep": {"nodes": 2, "horiz_res": 1775, "layers": 300},
        "medium": {"nodes": 4, "horiz_res": 1775, "layers": 600},
        "large": {"nodes": 8, "horiz_res": 1775, "layers": 1200},
    }


def murr_strong_cases():
    """Murrumbidgee strong scaling: fixed problem size, vary node count.

    Paper Fig. strong_scaling: fixed Δx = 620 m, 300 layers
    (~320M DOFs total), sweep node count 1 → 2 → 4 → 8 → 16 → 32 to
    measure parallel efficiency. All entries use the production solver
    preset (vlumping_inexact).

    The 1-node point is the same as ROUND3_MURR_HORIZ_SOLVERS' h8, so
    it may already exist on disk; the parser will pick it up either
    way.
    """
    return {
        "s1":  {"nodes": 1,  "horiz_res": 620, "layers": 300},
        "s2":  {"nodes": 2,  "horiz_res": 620, "layers": 300},
        "s4":  {"nodes": 4,  "horiz_res": 620, "layers": 300},
        "s8":  {"nodes": 8,  "horiz_res": 620, "layers": 300},
        "s16": {"nodes": 16, "horiz_res": 620, "layers": 300},
        "s32": {"nodes": 32, "horiz_res": 620, "layers": 300},
    }


def murr_hierarchy_cases():
    """Murrumbidgee hierarchy-depth sweep for the paper's two-curve story.

    Paper Fig. hierarchy_levels: fix a production scale (h8 = 8 nodes,
    Δx = 620 m, 300 layers) and sweep refinement levels in
    {1, 2, 3, 4} for the GMG-based solvers (gmg, vlumping_hmg). The
    plotter then picks the depth that minimises linear iterations and
    the depth that minimises wall-clock time per step, drawing them as
    the paper's two purple curves.
    """
    return {
        f"L{lev}": {"nodes": 8, "horiz_res": 620, "layers": 300,
                    "refinement_levels": lev}
        for lev in (1, 2, 3, 4)
    }


def murr_horiz_cases():
    """Paper's horizontal weak scaling: fixed 300 layers, vary horizontal resolution.

    Replicates Morrow et al. (2026), Fig. murrumbidgee_weak. The same horizontal
    resolutions as the paper (1775, 1250, 880, 620 m) give the same DOF counts
    (~40M DOF/node). On Sapphire Rapids (104 CPUs/node) this gives ~385k DOF/core
    (paper had ~833k on Cascade Lake 48 CPUs/node).

    GMG uses --refinement-levels 2 (not 3) to avoid the coarsest grid having
    fewer cells than MPI ranks. At dx=620m with R=2, the coarsest mesh is at
    2480m (~5600 triangles), adequate for 832 ranks.
    """
    return {
        "h1": {"nodes": 1, "horiz_res": 1775, "layers": 300},   # ~40M DOF
        "h2": {"nodes": 2, "horiz_res": 1250, "layers": 300},   # ~80M DOF
        "h4": {"nodes": 4, "horiz_res": 880, "layers": 300},    # ~160M DOF
        "h8": {"nodes": 8, "horiz_res": 620, "layers": 300},    # ~320M DOF
    }


def generate_pbs_script(case, solver, scale, output_dir, degree=1,
                        profile=False):
    """Generate a PBS job script for a given case/solver/scale.

    ``degree`` is the DG polynomial degree (Cockett only). When it is
    greater than 1 the script writes to ``<scale>_dq{degree}`` files so a
    DQ2 re-run sits alongside the DQ1 record rather than overwriting it.

    Returns the path to the generated script.
    """
    if case == "cockett":
        params = cockett_cases()[scale]
        cpus = CPUS_PER_NODE if params["nodes"] > 1 else CPUS_SINGLE_NODE
        ncpus = params["nodes"] * cpus
        mem_gb = params["nodes"] * 500  # 500 GB per normalsr node
        ref_levels = refinement_levels(solver)

        # For GMG, nx must be divisible by 2^refinement_levels
        nx = params["nx"]
        if ref_levels > 0:
            divisor = 2 ** ref_levels
            nx = (nx // divisor) * divisor
            if nx == 0:
                nx = divisor

        dt_flag = f" --dt {params['dt']}" if "dt" in params else ""
        run_cmd = (
            f"mpiexec -np $PBS_NCPUS python {SCALING_DIR}/cockett_3d.py "
            f"--nx {nx} --nz {params['nz']} --degree {degree} "
            f"--steps {params['steps']} --solver {solver} "
            f"--refinement-levels {ref_levels}{dt_flag}"
        )

    elif case == "murrumbidgee":
        params = murrumbidgee_cases()[scale]
        cpus = CPUS_PER_NODE if params["nodes"] > 1 else CPUS_SINGLE_NODE
        ncpus = params["nodes"] * cpus
        mem_gb = params["nodes"] * 500
        ref_levels = refinement_levels(solver)

        # Adaptive dt ramp-up: start small, grow to 12-hour steps,
        # run for 30 days of simulation time.
        run_cmd = (
            f"mpiexec -np $PBS_NCPUS python {SCALING_DIR}/murrumbidgee_3d.py "
            f"--horiz-res {params['horiz_res']} --layers {params['layers']} "
            f"--solver {solver} --refinement-levels {ref_levels} "
            f"--dt-init 60 --dt-max 43200 --dt-growth 1.5 --dt-shrink 0.5 "
            f"--t-final 2592000 "
            f"--data-dir {DATA_DIR}"
        )
    elif case == "murr_horiz":
        params = murr_horiz_cases()[scale]
        cpus = CPUS_PER_NODE if params["nodes"] > 1 else CPUS_SINGLE_NODE
        ncpus = params["nodes"] * cpus
        mem_gb = params["nodes"] * 500
        # GMG uses 2 refinement levels for horizontal scaling (not 3) to
        # keep the coarsest grid large enough for the MPI rank count.
        ref_levels = 2 if solver in GMG_SOLVERS else 0

        # Adaptive dt ramp-up, same as vertical scaling.
        run_cmd = (
            f"mpiexec -np $PBS_NCPUS python {SCALING_DIR}/murrumbidgee_3d.py "
            f"--horiz-res {params['horiz_res']} --layers {params['layers']} "
            f"--solver {solver} --refinement-levels {ref_levels} "
            f"--dt-init 60 --dt-max 43200 --dt-growth 1.5 --dt-shrink 0.5 "
            f"--t-final 2592000 "
            f"--data-dir {DATA_DIR}"
        )

    elif case == "murr_strong":
        params = murr_strong_cases()[scale]
        cpus = CPUS_PER_NODE if params["nodes"] > 1 else CPUS_SINGLE_NODE
        ncpus = params["nodes"] * cpus
        mem_gb = params["nodes"] * 500
        ref_levels = 2 if solver in GMG_SOLVERS else 0
        run_cmd = (
            f"mpiexec -np $PBS_NCPUS python {SCALING_DIR}/murrumbidgee_3d.py "
            f"--horiz-res {params['horiz_res']} --layers {params['layers']} "
            f"--solver {solver} --refinement-levels {ref_levels} "
            f"--dt-init 60 --dt-max 43200 --dt-growth 1.5 --dt-shrink 0.5 "
            f"--t-final 2592000 "
            f"--data-dir {DATA_DIR}"
        )

    elif case == "murr_hierarchy":
        params = murr_hierarchy_cases()[scale]
        cpus = CPUS_PER_NODE if params["nodes"] > 1 else CPUS_SINGLE_NODE
        ncpus = params["nodes"] * cpus
        mem_gb = params["nodes"] * 500
        ref_levels = params["refinement_levels"]
        run_cmd = (
            f"mpiexec -np $PBS_NCPUS python {SCALING_DIR}/murrumbidgee_3d.py "
            f"--horiz-res {params['horiz_res']} --layers {params['layers']} "
            f"--solver {solver} --refinement-levels {ref_levels} "
            f"--dt-init 60 --dt-max 43200 --dt-growth 1.5 --dt-shrink 0.5 "
            f"--t-final 2592000 "
            f"--data-dir {DATA_DIR}"
        )

    else:
        raise ValueError(f"Unknown case: {case}")

    # DQ2 runs share the per-cell DOF blow-up of degree-2 elements
    # (~27 vs 8 nodes per hex), so they get a distinct output tag and a
    # longer walltime ceiling than the DQ1 sweep.
    tag = scale if degree == 1 else f"{scale}_dq{degree}"

    if profile:
        run_cmd += " --profile"

    job_name = f"rs-{case[:4]}-{solver}-{tag}"
    if case in ("murrumbidgee", "murr_horiz", "murr_strong"):
        walltime = "06:00:00"
    elif case == "cockett" and degree > 1:
        walltime = "06:00:00"
    else:
        walltime = "03:00:00"

    result_dir = output_dir / case / solver
    result_dir.mkdir(parents=True, exist_ok=True)
    output_file = result_dir / f"{tag}.out"
    error_file = result_dir / f"{tag}.err"
    profile_file = result_dir / f"{tag}.profile"
    petsc_options_value = f"-log_view :{profile_file}"
    if solver.startswith("vlumping"):
        petsc_options_value += " -BackwardEuler-Equation_lumped_pc_mg_log"
    petsc_options = (
        f'export PETSC_OPTIONS="{petsc_options_value}"'
        if profile else ""
    )
    profile_check = f"test -s {profile_file}" if profile else ""

    script = f"""#!/bin/bash
#PBS -N {job_name}
#PBS -P {PBS_PROJECT}
#PBS -q {PBS_QUEUE}
#PBS -l walltime={walltime}
#PBS -l mem={mem_gb}GB
#PBS -l ncpus={ncpus}
#PBS -l jobfs=400GB
#PBS -l storage={STORAGE}
#PBS -l wd
#PBS -W umask=0022
#PBS -o {output_file}
#PBS -e {error_file}

source /etc/profile
set -e
module use /g/data/fp50/modules
module load firedrake/main-20260806

export PYTHONPATH="{GADOPT_PATH}":"{GWASSESS_PATH}":"{OMEGA_PATH}":${{PYTHONPATH}}
export PYTHONDONTWRITEBYTECODE=1

export OMPI_MCA_io="ompio"
export OMP_NUM_THREADS=1
export NCI_PROJECT={PBS_PROJECT}
export MPLCONFIGDIR=$PBS_JOBFS/matplotlib
{petsc_options}

cd {SCALING_DIR}

echo "=== Job info ==="
echo "Case: {case}"
echo "Solver: {solver}"
echo "Scale: {scale}"
echo "Degree: {degree}"
echo "Nodes: {params['nodes']}"
echo "CPUs: {ncpus}"
echo "Date: $(date)"
echo "G-ADOPT commit: $(git -C {GADOPT_PATH} rev-parse HEAD)"
echo "Morrow commit: $(git -C {MORROW_REPO} rev-parse HEAD)"
echo "Driver SHA256: $(sha256sum {SCALING_DIR}/{case.split('_')[0] if case == 'cockett' else 'murrumbidgee'}_3d.py | cut -d' ' -f1)"
echo "Solver SHA256: $(sha256sum {SCALING_DIR}/solvers/{solver}.py | cut -d' ' -f1)"
echo "Firedrake module: $LOADEDMODULES"
echo "PETSC_OPTIONS: $PETSC_OPTIONS"
echo "================"

{run_cmd} 2>&1

{profile_check}

echo "=== Job completed: $(date) ==="
"""

    script_path = result_dir / f"{tag}.pbs"
    script_path.write_text(script)
    return script_path


def archive_existing_outputs(case, solver, scale, output_dir, degree,
                             timestamp):
    """Move an existing result set before PBS appends a replacement run."""
    tag = scale if degree == 1 else f"{scale}_dq{degree}"
    result_dir = output_dir / case / solver
    archive_dir = result_dir / "previous" / timestamp
    moved = []
    for suffix in ("out", "err", "profile", "pbs"):
        source = result_dir / f"{tag}.{suffix}"
        if not source.exists():
            continue
        archive_dir.mkdir(parents=True, exist_ok=True)
        destination = archive_dir / source.name
        source.replace(destination)
        moved.append(destination)
    return moved


def get_phase_runs(phase):
    """Return list of (case, solver, scale) tuples for a given phase."""
    runs = []

    if phase == "smoke":
        # One solver per case to verify everything works
        for case in ["cockett", "murrumbidgee"]:
            runs.append((case, "gamg", "smoke"))

    elif phase == "sweep":
        # All 12 solvers, single node, both cases
        for case in ["cockett", "murrumbidgee"]:
            for solver in ALL_SOLVERS:
                runs.append((case, solver, "sweep"))

    elif phase == "scaling":
        # Medium and large scale for all solvers
        for case in ["cockett", "murrumbidgee"]:
            for solver in ALL_SOLVERS:
                for scale in ["medium", "large"]:
                    runs.append((case, solver, scale))

    elif phase == "round3":
        # Paper Cockett comparison and outcome table at all three scales.
        for solver in ROUND3_SOLVERS:
            for scale in ["sweep", "medium", "large"]:
                runs.append(("cockett", solver, scale))

    elif phase == "round3_smoke":
        # Paper Cockett solvers at the smoke scale.
        for solver in ROUND3_SOLVERS:
            runs.append(("cockett", solver, "smoke"))

    elif phase == "round3_dq2":
        # DQ2 Cockett: iterative winners at all 3 scales, degree-2 elements.
        # "huge" (not "large") to match parse_results.py's relabeled scales.
        for solver in COCKETT_DQ2_SOLVERS:
            for scale in ["sweep", "medium", "huge"]:
                runs.append(("cockett", solver, scale, 2))

    elif phase == "round3_dq2_smoke":
        # DQ2 smoke test: iterative winners at smoke scale, degree-2.
        for solver in COCKETT_DQ2_SOLVERS:
            runs.append(("cockett", solver, "smoke", 2))

    elif phase == "round3_murr":
        # Paper Murrumbidgee vertical results at all four scales.
        for solver in ROUND3_MURR_SOLVERS:
            for scale in ["smoke", "sweep", "medium", "large"]:
                runs.append(("murrumbidgee", solver, scale))

    elif phase == "round3_murr_smoke":
        # Paper Murrumbidgee solvers at one node and 150 layers.
        for solver in ROUND3_MURR_SOLVERS:
            runs.append(("murrumbidgee", solver, "smoke"))

    elif phase == "round3_murr_horiz":
        # Paper horizontal weak-scaling results at all four scales.
        for solver in ROUND3_MURR_HORIZ_SOLVERS:
            for scale in ["h1", "h2", "h4", "h8"]:
                runs.append(("murr_horiz", solver, scale))

    elif phase == "round3_murr_horiz_smoke":
        # Paper horizontal solvers at one node and 1775 m resolution.
        for solver in ROUND3_MURR_HORIZ_SOLVERS:
            runs.append(("murr_horiz", solver, "h1"))

    elif phase == "strong":
        # Murrumbidgee strong scaling: fixed Δx=620m, 300 layers,
        # sweep nodes 1->32. vlumping_inexact carries the curve up to
        # 16 nodes (its coarse solve diverges at 3328 cores); at 32
        # nodes only vlumping_hmg's nested geometric MG coarse path is
        # well-conditioned enough to converge.
        for scale in ("s1", "s2", "s4", "s8", "s16", "s32"):
            runs.append(("murr_strong", "vlumping_inexact", scale))
        # Full vlumping_hmg strong-scaling curve (2026-07 rerun extra): carry
        # the nested-coarse-solve variant across the whole sweep, not just the
        # extreme s32 point, so it fills the 8->32 gap where vlumping_inexact's
        # direct coarse factorisation hangs/OOMs (s16 M2, s32 OOM).
        for scale in ("s2", "s4", "s8", "s16", "s32"):
            runs.append(("murr_strong", "vlumping_hmg", scale))

    elif phase == "hierarchy":
        # Murrumbidgee hierarchy-depth study at h8 (production scale)
        # for the two GMG-based solvers; downstream plotter picks the
        # min-iterations and min-wall-clock depth for each.
        for solver in ("gmg", "vlumping_hmg"):
            for scale in ("L1", "L2", "L3", "L4"):
                runs.append(("murr_hierarchy", solver, scale))

    elif phase == "paper_profiles":
        # Exact union of the runs displayed in the manuscript figures and
        # tables. L4 is retained in the experimental record but is not shown
        # in the hierarchy-depth table.
        for solver in PAPER_SOLVERS:
            for scale in ("sweep", "medium", "large"):
                runs.append(("cockett", solver, scale))
            for scale in ("smoke", "sweep", "medium", "large"):
                runs.append(("murrumbidgee", solver, scale))
            for scale in ("h1", "h2", "h4", "h8"):
                runs.append(("murr_horiz", solver, scale))
        runs.extend(get_phase_runs("strong"))
        for solver in ("gmg", "vlumping_hmg"):
            for scale in ("L1", "L2", "L3"):
                runs.append(("murr_hierarchy", solver, scale))

    elif phase == "reviewer_smoke":
        # Exercise each new mechanism on the one-node, 150-layer case.
        for solver in ("vlumping_inexact_lag3",
                       "vlumping_hmg_bjacilu_lag3"):
            runs.append(("murrumbidgee", solver, "smoke"))

    elif phase == "reviewer_h8":
        # Matched production-scale comparison for setup lag and smoother type.
        for solver in REVIEWER_SOLVERS:
            runs.append(("murr_horiz", solver, "h8"))

    elif phase == "rich_h8":
        # Setup-cost campaign at production scale. The controls already ran
        # on 2026-08-20 and are not repeated.
        for solver in RICH_SOLVERS:
            runs.append(("murr_horiz", solver, "h8"))

    elif phase == "rich_smoke":
        # Exercise each new preset on the one-node, 1775 m horizontal case.
        for solver in RICH_SOLVERS:
            runs.append(("murr_horiz", solver, "h1"))

    elif phase == "reviewer_strong":
        # Submit selected scales with --solvers after the h8 screen.
        for solver in REVIEWER_SOLVERS:
            for scale in ("s16", "s32"):
                runs.append(("murr_strong", solver, scale))

    elif phase == "all":
        # Everything: smoke + sweep + scaling
        for p in ["smoke", "sweep", "scaling"]:
            runs.extend(get_phase_runs(p))

    else:
        raise ValueError(f"Unknown phase: {phase}")

    return runs


def main():
    parser = argparse.ArgumentParser(
        description="Generate and submit PBS jobs for Richards scaling tests"
    )
    parser.add_argument(
        "--phase", required=True,
        choices=["smoke", "sweep", "scaling", "all",
                 "round3", "round3_smoke",
                 "round3_dq2", "round3_dq2_smoke",
                 "round3_murr", "round3_murr_smoke",
                 "round3_murr_horiz", "round3_murr_horiz_smoke",
                 "strong", "hierarchy", "paper_profiles", "reviewer_smoke",
                 "reviewer_h8", "reviewer_strong",
                 "rich_smoke", "rich_h8"],
        help="Which set of jobs to generate/submit"
    )
    parser.add_argument(
        "--dry-run", action="store_true",
        help="Generate scripts but do not submit"
    )
    parser.add_argument(
        "--output-dir", type=str,
        default=f"{SCALING_DIR}/results",
        help="Base directory for job scripts and output"
    )
    parser.add_argument(
        "--solvers", nargs="+", default=None,
        help="Override solver list (default: all 12)"
    )
    parser.add_argument(
        "--scales", nargs="+", default=None,
        help="Keep only the named scales from the selected phase"
    )
    parser.add_argument(
        "--profile", action="store_true",
        help="Write PETSc -log_view output next to each result"
    )
    parser.add_argument(
        "--missing-profiles-only", action="store_true",
        help="Skip runs that already have a nonempty profile file"
    )
    parser.add_argument(
        "--cases", nargs="+", default=None,
        choices=["cockett", "murrumbidgee", "murr_horiz",
                 "murr_strong", "murr_hierarchy"],
        help="Override case list (default: both)"
    )
    args = parser.parse_args()

    output_dir = Path(args.output_dir).resolve()
    output_dir.mkdir(parents=True, exist_ok=True)

    runs = get_phase_runs(args.phase)

    # Phases emit (case, solver, scale) triples, except the DQ2 phases
    # which append a 4th degree element. Normalise to a uniform 4-tuple.
    runs = [(c, s, sc, deg[0] if deg else 1)
            for c, s, sc, *deg in runs]

    # Filter by user overrides
    if args.solvers:
        runs = [r for r in runs if r[1] in args.solvers]
    if args.cases:
        runs = [r for r in runs if r[0] in args.cases]
    if args.scales:
        runs = [r for r in runs if r[2] in args.scales]
    if args.missing_profiles_only:
        if not args.profile:
            parser.error("--missing-profiles-only requires --profile")
        runs = [
            r for r in runs
            if not (
                output_dir / r[0] / r[1] /
                (r[2] if r[3] == 1 else f"{r[2]}_dq{r[3]}")
            ).with_suffix(".profile").is_file()
            or (
                output_dir / r[0] / r[1] /
                (r[2] if r[3] == 1 else f"{r[2]}_dq{r[3]}")
            ).with_suffix(".profile").stat().st_size == 0
        ]

    print(f"Phase: {args.phase}")
    print(f"Total jobs: {len(runs)}")
    print(f"Output directory: {output_dir}")
    print()

    if not args.dry_run:
        timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
        for case, solver, scale, degree in runs:
            moved = archive_existing_outputs(
                case, solver, scale, output_dir, degree, timestamp
            )
            for path in moved:
                print(f"  Archived: {path}")

    scripts = []
    for case, solver, scale, degree in runs:
        script_path = generate_pbs_script(case, solver, scale, output_dir,
                                          degree=degree, profile=args.profile)
        scripts.append((case, solver, scale, script_path))
        label = f"{case}/{solver}/{scale}" + (f" DQ{degree}" if degree > 1 else "")
        print(f"  Generated: {script_path.name:40s}  [{label}]")

    if args.dry_run:
        print(f"\nDry run — {len(scripts)} scripts generated, none submitted.")
        return

    print(f"\nSubmitting {len(scripts)} jobs...")
    job_ids = []
    for case, solver, scale, script_path in scripts:
        result = subprocess.run(
            [QSUB, str(script_path)],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            universal_newlines=True,
        )
        if result.returncode == 0:
            job_id = result.stdout.strip()
            job_ids.append(job_id)
            print(f"  Submitted: {job_id}  [{case}/{solver}/{scale}]")
        else:
            print(f"  FAILED: {case}/{solver}/{scale}: {result.stderr.strip()}")

    print(f"\nSubmitted {len(job_ids)}/{len(scripts)} jobs.")


if __name__ == "__main__":
    main()
