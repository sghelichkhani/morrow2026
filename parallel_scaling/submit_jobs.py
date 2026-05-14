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
from pathlib import Path

# Solvers that require a mesh hierarchy for geometric multigrid.
# GMG-family solvers need the full 3-level hierarchy (paper's recipe).
# vlumping_hmg only needs L=1 for its initial Phase A sweep -- a deeper
# base hierarchy doesn't survive the "at least 20 coarse cells per rank"
# safety floor on any of the current cases, so we start at the minimum
# that exercises the algorithm.
GMG3_SOLVERS = {"gmg", "ngmres_gmg", "qn_gmg"}
HMG1_SOLVERS = {"vlumping_hmg"}
GMG_SOLVERS = GMG3_SOLVERS | HMG1_SOLVERS

ALL_SOLVERS = [
    "gmg", "boomeramg", "gamg_asm", "vlumping", "gamg",
    "bjacobi", "sor",
    "ngmres_gmg", "qn_gmg",
    # VLumping parameter variants
    "vlumping_1sweep", "vlumping_4sweep", "vlumping_richardson",
    "vlumping_sor", "vlumping_inexact",
]

# The 11 solvers for the Round 3 Cockett comparison: 6 VLumping variants
# (baseline + 5 parameter sweeps) and 5 re-baselines of previous winners.
ROUND3_SOLVERS = [
    "vlumping", "vlumping_1sweep", "vlumping_4sweep",
    "vlumping_richardson", "vlumping_sor", "vlumping_inexact",
    "boomeramg", "ngmres_gmg", "gmg", "gamg", "bjacobi",
    # Round 4 additions: line smoother, line smoother + nested 2D MG
    "vlumping_linesmooth", "vlumping_hmg",
]

# Murrumbidgee vertical weak scaling: 4 solvers representing different
# preconditioner families. Tests weak scaling while simultaneously
# increasing aspect ratio (the ultimate anisotropy stress test).
ROUND3_MURR_SOLVERS = [
    "vlumping_inexact",  # best VLumping variant from Cockett
    "vlumping",          # baseline VLumping (2nd best)
    "boomeramg",         # algebraic AMG (expected to struggle at high AR)
    "gmg",               # GMG-H with horizontal-only coarsening (paper's solver)
    # Round 4 additions
    "vlumping_linesmooth",
    "vlumping_hmg",
]

# Murrumbidgee horizontal weak scaling: replicates the paper's main scaling
# figure (Morrow et al. 2026, Fig. murrumbidgee_weak). Fixed 300 layers,
# vary horizontal resolution to keep ~40M DOF/node. The paper tested GMG-H,
# GAMG, BJacobi; we add VLumping and BoomerAMG.
ROUND3_MURR_HORIZ_SOLVERS = [
    "vlumping_inexact",  # new: best VLumping variant
    "vlumping",          # new: baseline VLumping
    "boomeramg",         # new: best algebraic AMG from Cockett
    "gmg",               # paper's winner
    "gamg",              # paper's AMG
    "bjacobi",           # paper's baseline
    # Round 4 additions
    "vlumping_linesmooth",
    "vlumping_hmg",
]

# Gadi PBS configuration
PBS_PROJECT = "xd2"
PBS_QUEUE = "normalsr"
CPUS_PER_NODE = 104  # Sapphire Rapids nodes on normalsr queue
CPUS_SINGLE_NODE = 104  # Full Sapphire Rapids node (was 48 for Cascade Lake)
STORAGE = "scratch/xd2+gdata/xd2+gdata/fp50"

# Paths on Gadi
GADOPT_PATH = "/scratch/xd2/sg8812/g-adopt-worktrees/sghelichkhani/richardson"
LOCAL_PACKAGES = "/scratch/xd2/sg8812/local/firedrake-main-20260401/lib/python3.11/site-packages"
IRKSOME_OVERRIDE = "/scratch/xd2/sg8812/Irksome"
FIREDRAKE_OVERRIDE = "/scratch/xd2/sg8812/firedrake-override"
GWASSESS_PATH = "/scratch/xd2/sg8812/gwassess"
SCALING_DIR = f"{GADOPT_PATH}/tests/parallel_scaling_richards"
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


def generate_pbs_script(case, solver, scale, output_dir):
    """Generate a PBS job script for a given case/solver/scale.

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
            f"--nx {nx} --nz {params['nz']} "
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

    job_name = f"rs-{case[:4]}-{solver}-{scale}"
    walltime = "06:00:00" if case in ("murrumbidgee", "murr_horiz") else "03:00:00"

    result_dir = output_dir / case / solver
    result_dir.mkdir(parents=True, exist_ok=True)
    output_file = result_dir / f"{scale}.out"
    error_file = result_dir / f"{scale}.err"

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
module use /g/data/fp50/modules
module load firedrake/main-20260401

export PYTHONPATH="{GADOPT_PATH}":"{IRKSOME_OVERRIDE}":"{LOCAL_PACKAGES}":"{FIREDRAKE_OVERRIDE}":"{GWASSESS_PATH}":${{PYTHONPATH}}
export PYTHONDONTWRITEBYTECODE=1

export OMPI_MCA_io="ompio"
export OMP_NUM_THREADS=1
export MPLCONFIGDIR=$PBS_JOBFS/matplotlib
# Note: -log_view / -memory_view require PETSc init-time support that
# Firedrake/petsc4py does not provide. Per-step timing and RSS are
# tracked in Python; snes_view dumps the full solver hierarchy.

cd {SCALING_DIR}

echo "=== Job info ==="
echo "Case: {case}"
echo "Solver: {solver}"
echo "Scale: {scale}"
echo "Nodes: {params['nodes']}"
echo "CPUs: {ncpus}"
echo "Date: $(date)"
echo "================"

{run_cmd} 2>&1

echo "=== Job completed: $(date) ==="
"""

    script_path = result_dir / f"{scale}.pbs"
    script_path.write_text(script)
    return script_path


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
        # Round 3 Cockett comparison: 11 solvers at all 3 scales
        for solver in ROUND3_SOLVERS:
            for scale in ["sweep", "medium", "large"]:
                runs.append(("cockett", solver, scale))

    elif phase == "round3_smoke":
        # Round 3 smoke test: 11 solvers at smoke scale only
        for solver in ROUND3_SOLVERS:
            runs.append(("cockett", solver, "smoke"))

    elif phase == "round3_murr":
        # Murrumbidgee vertical weak scaling: 4 solvers at all 4 scales
        for solver in ROUND3_MURR_SOLVERS:
            for scale in ["smoke", "sweep", "medium", "large"]:
                runs.append(("murrumbidgee", solver, scale))

    elif phase == "round3_murr_smoke":
        # Murrumbidgee smoke test: 4 solvers at smoke scale (1 node, 150 layers)
        for solver in ROUND3_MURR_SOLVERS:
            runs.append(("murrumbidgee", solver, "smoke"))

    elif phase == "round3_murr_horiz":
        # Paper's horizontal weak scaling: 6 solvers at all 4 scales
        for solver in ROUND3_MURR_HORIZ_SOLVERS:
            for scale in ["h1", "h2", "h4", "h8"]:
                runs.append(("murr_horiz", solver, scale))

    elif phase == "round3_murr_horiz_smoke":
        # Horizontal scaling smoke test: 6 solvers at h1 (1 node, 1775m)
        for solver in ROUND3_MURR_HORIZ_SOLVERS:
            runs.append(("murr_horiz", solver, "h1"))

    elif phase == "strong":
        # Murrumbidgee strong scaling: fixed Δx=620m, 300 layers,
        # sweep nodes 1->32 with the production solver preset.
        for scale in ("s1", "s2", "s4", "s8", "s16", "s32"):
            runs.append(("murr_strong", "vlumping_inexact", scale))

    elif phase == "hierarchy":
        # Murrumbidgee hierarchy-depth study at h8 (production scale)
        # for the two GMG-based solvers; downstream plotter picks the
        # min-iterations and min-wall-clock depth for each.
        for solver in ("gmg", "vlumping_hmg"):
            for scale in ("L1", "L2", "L3", "L4"):
                runs.append(("murr_hierarchy", solver, scale))

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
                 "round3_murr", "round3_murr_smoke",
                 "round3_murr_horiz", "round3_murr_horiz_smoke",
                 "strong", "hierarchy"],
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
        "--cases", nargs="+", default=None,
        choices=["cockett", "murrumbidgee", "murr_horiz",
                 "murr_strong", "murr_hierarchy"],
        help="Override case list (default: both)"
    )
    args = parser.parse_args()

    output_dir = Path(args.output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    runs = get_phase_runs(args.phase)

    # Filter by user overrides
    if args.solvers:
        runs = [(c, s, sc) for c, s, sc in runs if s in args.solvers]
    if args.cases:
        runs = [(c, s, sc) for c, s, sc in runs if c in args.cases]

    print(f"Phase: {args.phase}")
    print(f"Total jobs: {len(runs)}")
    print(f"Output directory: {output_dir}")
    print()

    scripts = []
    for case, solver, scale in runs:
        script_path = generate_pbs_script(case, solver, scale, output_dir)
        scripts.append((case, solver, scale, script_path))
        print(f"  Generated: {script_path.name:40s}  [{case}/{solver}/{scale}]")

    if args.dry_run:
        print(f"\nDry run — {len(scripts)} scripts generated, none submitted.")
        return

    print(f"\nSubmitting {len(scripts)} jobs...")
    job_ids = []
    for case, solver, scale, script_path in scripts:
        result = subprocess.run(
            ["qsub", str(script_path)],
            capture_output=True, text=True,
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
