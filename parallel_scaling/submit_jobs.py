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
    "vlumping_hmg_snapshot_lag3",
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
    "vlumping_rtol6",    # baseline VLumping at ksp_rtol 1e-6
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

# The conservative half of the same campaign: keep the Chebyshev smoother
# and lag only the setup. On a dt ramp this wins where the Richardson
# presets lose, because a spread spectrum is what a polynomial smoother is
# for. These two are the leading candidates, not the fallback.
# The 2026-08 fair-comparison campaign.
#
# Every compared solver uses ksp_rtol 1e-4 with right preconditioning, one
# SNES block, one linear iteration cap and one mesh per basin scale, so a
# difference in wall time is a difference in the preconditioner.
#
# The grid is deliberately not a full product. The strong sweep and the
# ablation variants answer narrower questions than the weak-scaling curves,
# and running them everywhere would spend most of the campaign re-confirming
# divergences and out-of-memory failures that the record already documents.

# The paper's outcome table: every solver, every weak-scaling point.
FAIR_CORE_SOLVERS = [
    "sor", "bjacobi", "gamg", "gmg", "boomeramg",
    "vlumping_inexact", "vlumping_hmg",
]

# The candidate production presets. They target setup cost, so they earn the
# whole horizontal weak-scaling curve, which is the paper's main figure.
FAIR_ABLATION_SOLVERS = [
    "vlumping_inexact_snapshot_lag3", "vlumping_hmg_snapshot_lag3",
    "vlumping_inexact_rich", "vlumping_inexact_rich_lag3",
    "vlumping_hmg_rich", "vlumping_hmg_rich_lag3",
]

# Strong scaling asks one question: does the preset survive the coarse-solve
# latency at high rank counts. The presets that cannot converge on the basin
# at all are not in it. s1 is dropped because the fixed 320M-DOF problem
# does not fit one node, and s8 is the same job as murr_horiz h8, kept as a
# same-day repeat that bounds machine noise.
FAIR_STRONG_SOLVERS = [
    "bjacobi", "vlumping_inexact", "vlumping_hmg",
    "vlumping_inexact_snapshot_lag3", "vlumping_hmg_snapshot_lag3",
    "vlumping_hmg_rich_lag3",
]

# Tolerance ablation: the same preconditioner at 1e-6 and 1e-4 on the same
# mesh, for three solver families, so the effect of the tolerance is
# separable from the effect of the preconditioner.
FAIR_TOLERANCE_SOLVERS = ["vlumping_rtol6", "bjacobi_rtol6", "gmg_rtol6"]

SNAPSHOT_SOLVERS = [
    "vlumping_inexact_snapshot_lag3",
    "vlumping_hmg_snapshot_lag3",
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


# One mesh per basin scale, for every solver.
#
# On the unstructured basin meshes the refinement level decides the mesh as
# well as the depth of the multigrid, because the fine mesh is built by
# refining a coarser triangulation. Solvers that asked for different depths
# were therefore solving different discrete problems: at the vertical
# "large" scale, bjacobi had 160,322,400 unknowns, vlumping_hmg 165,139,200
# and gmg 183,398,400, a spread of 14%. Fixing the level at two gives every
# solver the same mesh; the hierarchy solvers simply use as much of it as
# they need. The depth itself stays a tuning question, answered by the
# `hierarchy` phase.
#
# Cockett needs none of this. Its mesh is structured, so refining a coarse
# mesh lands on exactly the same fine mesh, and every solver already has
# 143,769,600 unknowns at every level.
BASIN_REFINEMENT_LEVELS = 2

# Monthly-Murrumbidgee campaign (2026-08-27). Same basin meshes as
# murr_horiz, but the dt ramp climbs from 60 s to a 31-day (monthly) cap.
# This raises the column-integrated horizontal diffusion number
# D_col = dt*T / (S_col*L^2)  (T = int K dz, S_col = int (Ss*S + C) dz)
# into the elliptic regime, where BJac-ILU (no horizontal coarse correction)
# is predicted to fail while the coarse-corrected presets (gmg,
# vlumping_inexact, vlumping_hmg) do not. Because D_col ~ dt/L^2, failure is
# expected to onset first at the fine scales (h4/h8). GMG-H is the mechanism
# control: if it survives (slow) while BJac fails, the cause is "needs a
# horizontal coarse solve", not vlumping-specific. See
# NOTES/2026-08-27-MONTHLY-MURRUMBIDGEE.md (esp. §0 and §2.3).
MONTHLY_DT_INIT = 60          # s
MONTHLY_DT_MAX = 2678400      # s = 31 days (one month)
MONTHLY_DT_GROWTH = 2.0       # ramp quickly; drop to 1.5 if healthy solvers thrash
MONTHLY_DT_SHRINK = 0.5
MONTHLY_T_FINAL = 15000000    # s ~= 174 days: ~16 ramp steps + a few monthly steps
MONTHLY_MURR_SOLVERS = ["bjacobi", "gmg", "vlumping_inexact", "vlumping_hmg"]

# ---- Seasonal-Murrumbidgee campaign (2026-08) — the paper's main result ----
# A 3-month dt ramp on a near-saturated basin (raised water table + flattened
# retention) drives the column-integrated diffusion number
# D_col = dt*T / (S_col*L^2) into the regime where block-Jacobi can no longer
# keep up, while vertical lumping takes 3-month steps at a low, flat iteration
# count. Two regimes bracket the effect:
#   graded    (case murr_seasonal)           wt+5,  flatten/3, growth 1.5.
#       BJac degrades and hits an L-dependent dt ceiling (~1/L^2) but still
#       reaches t_final by thrashing; vlumping healthy. The nuanced headline.
#   saturated (case murr_seasonal_saturated) wt+10, flatten/10, growth 2.0.
#       BJac cannot take a single step at any scale (near the C=0 end-member);
#       vlumping solves it to t_final. The clean binary companion.
# Ss stays 0 (Fable review B1): the Ss*S*Dt(h) mass term crashes Irksome's
# stage-value splitter, contributes nothing to the mechanism, and BackwardEuler
# stays well-posed at Ss=0 (SIPG diffusion + side Robin BC anchor the saturated
# cells). See the dated report SEASONAL-REPORT-2026-08-28.md (this directory).
SEASONAL_DT_INIT = 60
SEASONAL_DT_MAX = 8035200      # 3 * 31 days (three months) -- keep dt large
SEASONAL_DT_SHRINK = 0.5
SEASONAL_T_FINAL = 40000000    # ~463 days
SEASONAL_SS = 0.0

# graded regime (headline)
SEASONAL_GROWTH = 1.5
SEASONAL_WT_OFFSET = 5.0
SEASONAL_FLATTEN = 3.0

# saturated regime (companion, BJac fails outright)
SEASONAL_SAT_GROWTH = 2.0
SEASONAL_SAT_WT_OFFSET = 10.0
SEASONAL_SAT_FLATTEN = 10.0

# Presets shown in the paper: BJac + GMG-H baselines, and the two DIRECT-COARSE
# vertical-lumping presets, which are the recommended pair. Both carry the
# Richardson smoother and the lag-3 snapshot; they differ in the fine-level
# smoother alone.
#
# Superseded 2026-08-29: this list previously named vlumping_hmg_rich_lag3 as
# the second shown series and treated vlumping_linesmooth as a control. The
# seasonal campaign reversed that — hmg's iterative coarse solve thrashes the
# adaptive step in this regime — so linesmooth is the shown second series and
# hmg is reported only for the strong-scaling decompositions.
SEASONAL_MURR_SOLVERS = [
    "bjacobi", "gmg",
    "vlumping_inexact_rich_lag3",  # "VLumping"            (point smoother)
    "vlumping_linesmooth",         # "VLumping-linesmooth" (column-exact smoother)
]


def cockett_cases():
    """Return Cockett case definitions for each scale."""
    return {
        "smoke": {"nodes": 1, "nx": 64, "nz": 78, "steps": 10},
        "sweep": {"nodes": 1, "nx": 120, "nz": 156, "steps": 30},   # 1 node, 18M
        "medium": {"nodes": 2, "nx": 152, "nz": 196, "steps": 30},  # 2 nodes, 36M
        # Weak-scaling node-doubling curve at a fixed ~175k DOF/core:
        # 1/2/4/8 nodes = 18M/36M/72M/144M. "large" is the genuine 4-node
        # 72M point (192x192x247). It used to duplicate "huge" (both defined
        # as 8-node/144M), which left the fair Cockett curve at 1/2/8 nodes
        # with no 4-node run, and made "huge" hold stale pre-fair data.
        # Fixed 2026-08-25; re-run by the fair_gap_fix phase.
        "large": {"nodes": 4, "nx": 192, "nz": 247, "steps": 30},   # 4 nodes, 72M
        "huge": {"nodes": 8, "nx": 240, "nz": 312, "steps": 30},    # 8 nodes, 144M
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
        ref_levels = BASIN_REFINEMENT_LEVELS

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
        ref_levels = BASIN_REFINEMENT_LEVELS

        # Adaptive dt ramp-up, same as vertical scaling.
        run_cmd = (
            f"mpiexec -np $PBS_NCPUS python {SCALING_DIR}/murrumbidgee_3d.py "
            f"--horiz-res {params['horiz_res']} --layers {params['layers']} "
            f"--solver {solver} --refinement-levels {ref_levels} "
            f"--dt-init 60 --dt-max 43200 --dt-growth 1.5 --dt-shrink 0.5 "
            f"--t-final 2592000 "
            f"--data-dir {DATA_DIR}"
        )

    elif case == "murr_monthly":
        # Same basin meshes as murr_horiz, but a monthly dt ramp (see the
        # MONTHLY_* constants and NOTES/2026-08-27-MONTHLY-MURRUMBIDGEE.md).
        params = murr_horiz_cases()[scale]
        cpus = CPUS_PER_NODE if params["nodes"] > 1 else CPUS_SINGLE_NODE
        ncpus = params["nodes"] * cpus
        mem_gb = params["nodes"] * 500
        ref_levels = BASIN_REFINEMENT_LEVELS

        # Climb quickly from 60 s to a 31-day cap and run to ~174 days, so a
        # healthy solver takes ~16 ramp steps + a few monthly plateau steps.
        # The ramp itself traces the D_col crossover: BJac starts cheap in the
        # reaction-dominated corner and its lin/NL climbs as dt doubles.
        run_cmd = (
            f"mpiexec -np $PBS_NCPUS python {SCALING_DIR}/murrumbidgee_3d.py "
            f"--horiz-res {params['horiz_res']} --layers {params['layers']} "
            f"--solver {solver} --refinement-levels {ref_levels} "
            f"--dt-init {MONTHLY_DT_INIT} --dt-max {MONTHLY_DT_MAX} "
            f"--dt-growth {MONTHLY_DT_GROWTH} --dt-shrink {MONTHLY_DT_SHRINK} "
            f"--t-final {MONTHLY_T_FINAL} "
            f"--data-dir {DATA_DIR}"
        )
    elif case in ("murr_seasonal", "murr_seasonal_saturated"):
        # The paper's main scaling result: a 3-month dt ramp on a near-saturated
        # basin. Two regimes share the mesh, dt cap and t_final; they differ only
        # in the three soil/ramp levers. See the SEASONAL_* constants and the
        # dated report.
        if case == "murr_seasonal":
            growth, wt_off, flatten = (
                SEASONAL_GROWTH, SEASONAL_WT_OFFSET, SEASONAL_FLATTEN)
        else:
            growth, wt_off, flatten = (
                SEASONAL_SAT_GROWTH, SEASONAL_SAT_WT_OFFSET, SEASONAL_SAT_FLATTEN)
        params = murr_horiz_cases()[scale]
        cpus = CPUS_PER_NODE if params["nodes"] > 1 else CPUS_SINGLE_NODE
        ncpus = params["nodes"] * cpus
        mem_gb = params["nodes"] * 500
        ref_levels = BASIN_REFINEMENT_LEVELS

        run_cmd = (
            f"mpiexec -np $PBS_NCPUS python {SCALING_DIR}/murrumbidgee_3d.py "
            f"--horiz-res {params['horiz_res']} --layers {params['layers']} "
            f"--solver {solver} --refinement-levels {ref_levels} "
            f"--dt-init {SEASONAL_DT_INIT} --dt-max {SEASONAL_DT_MAX} "
            f"--dt-growth {growth} --dt-shrink {SEASONAL_DT_SHRINK} "
            f"--t-final {SEASONAL_T_FINAL} "
            f"--watertable-offset {wt_off} "
            f"--retention-flatten {flatten} "
            f"--ss {SEASONAL_SS} "
            f"--data-dir {DATA_DIR}"
        )
    elif case == "murr_strong":
        params = murr_strong_cases()[scale]
        cpus = CPUS_PER_NODE if params["nodes"] > 1 else CPUS_SINGLE_NODE
        ncpus = params["nodes"] * cpus
        mem_gb = params["nodes"] * 500
        ref_levels = BASIN_REFINEMENT_LEVELS
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
    if case in ("murrumbidgee", "murr_horiz", "murr_strong", "murr_monthly",
                "murr_seasonal", "murr_seasonal_saturated"):
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


def clear_existing_outputs(case, solver, scale, output_dir, degree):
    """Delete an existing result set so the replacement run overwrites it.

    PBS appends to its output file, so a stale file would concatenate two
    runs. Every result file is tracked in git, so the previous run stays
    recoverable from history and no archive copy is kept here.
    """
    tag = scale if degree == 1 else f"{scale}_dq{degree}"
    result_dir = output_dir / case / solver
    removed = []
    for suffix in ("out", "err", "profile", "pbs"):
        source = result_dir / f"{tag}.{suffix}"
        if not source.exists():
            continue
        source.unlink()
        removed.append(source)
    return removed


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

    elif phase == "monthly_murr":
        # Monthly-Murrumbidgee weak-scaling regime sweep: same basin meshes
        # as murr_horiz at h1/h2/h4/h8, but the monthly dt ramp. Four solvers,
        # four scales = 16 jobs. The full L ladder (1775/1250/880/620 m) traces
        # the D_col ~ 1/L^2 failure onset for BJac. See
        # NOTES/2026-08-27-MONTHLY-MURRUMBIDGEE.md.
        for solver in MONTHLY_MURR_SOLVERS:
            for scale in ("h1", "h2", "h4", "h8"):
                runs.append(("murr_monthly", solver, scale))

    elif phase == "monthly_murr_smoke":
        # One 1-node smoke to validate the ramp reaches 31 d, the run reaches
        # t_final within walltime, and the profile parses, before the matrix.
        runs.append(("murr_monthly", "vlumping_inexact", "h1"))

    elif phase == "seasonal":
        # Graded seasonal regime (headline): 4 shown presets x 4 scales.
        for solver in SEASONAL_MURR_SOLVERS:
            for scale in ("h1", "h2", "h4", "h8"):
                runs.append(("murr_seasonal", solver, scale))

    elif phase == "seasonal_saturated":
        # Near-saturated companion (BJac fails outright): 4 presets x 4 scales.
        for solver in SEASONAL_MURR_SOLVERS:
            for scale in ("h1", "h2", "h4", "h8"):
                runs.append(("murr_seasonal_saturated", solver, scale))

    elif phase == "seasonal_hmg":
        # Add the shipped VLumping-HMG (rich+lag3) series to BOTH regimes. The
        # first seasonal runs used vlumping_linesmooth as a reliability control;
        # hmg is the shown/shipped second series, so it needs its own runs.
        # 1 preset x 4 scales x 2 regimes = 8 jobs.
        for case in ("murr_seasonal", "murr_seasonal_saturated"):
            for scale in ("h1", "h2", "h4", "h8"):
                runs.append((case, "vlumping_hmg_rich_lag3", scale))

    elif phase == "linesmooth_lag3":
        # Rerun every reported vlumping_linesmooth point after the preset was
        # rebuilt on 2026-08-29 to carry the Richardson smoother and the lag-3
        # snapshot, so that it differs from vlumping_inexact_rich_lag3 in the
        # fine-level smoother alone. The old runs rebuilt the preconditioner
        # every Newton step and spent 28-35% of the solve in setup against
        # 5-8% for its partner, which the paper reports as a matched pair.
        # 4 experiments x 4 scales = 16 jobs.
        for scale in ("h1", "h2", "h4", "h8"):
            runs.append(("murr_seasonal", "vlumping_linesmooth", scale))
            runs.append(("murr_seasonal_saturated", "vlumping_linesmooth", scale))
            runs.append(("murr_horiz", "vlumping_linesmooth", scale))
        for scale in ("smoke", "sweep", "medium", "large"):
            runs.append(("murrumbidgee", "vlumping_linesmooth", scale))

    elif phase == "linesmooth_lag3_smoke":
        # One cheap 1-node point first. The auto-damped Richardson smoother had
        # never been combined with the ASM line smoother, because omega_auto
        # strips the level prefix's pc_python_type before it rewrites the
        # smoother's ksp_type. Verified locally on a 12x12x16 Cockett box
        # (richardson, damping 0.998, ASMLinesmoothPC intact); this repeats the
        # check at rank counts where the spectrum spreads.
        runs.append(("murr_horiz", "vlumping_linesmooth", "h1"))

    elif phase == "linesmooth_attribution":
        # The 2026-08-29 rebuild changed two things at once and the result
        # split by regime: in the ordinary regime it saved 14-30% of wall time
        # at an unchanged iteration count, while in the saturated seasonal
        # regime the failed-step count rose from 4 to 108 at h4. These two
        # variants carry one change each, on the two scales where the effect
        # is largest, so the smoother and the setup lag can be separated.
        for solver in ("vlumping_linesmooth_rich", "vlumping_linesmooth_lag3"):
            for scale in ("h2", "h4"):
                runs.append(("murr_seasonal_saturated", solver, scale))

    elif phase == "final_richardson":
        # The submission campaign. Every preset the paper reports, on every
        # experiment, in one configuration: the measured Richardson damping and
        # no operator snapshot. Run under the names the paper and g-adopt use,
        # so that paper name, library preset and run directory agree.
        #
        # vlumping_linesmooth already has all four Murrumbidgee experiments from
        # the 2026-08-29 reruns, which used parameters identical to the shipped
        # preset; only its Cockett points are missing.
        for scale in ("sweep", "medium", "large", "huge"):
            runs.append(("cockett", "vlumping", scale))
            runs.append(("cockett", "vlumping_linesmooth", scale))
            runs.append(("cockett", "vlumping_hmg", scale))
        for scale in ("h1", "h2", "h4", "h8"):
            runs.append(("murr_horiz", "vlumping", scale))
            runs.append(("murr_horiz", "vlumping_hmg", scale))
            runs.append(("murr_seasonal", "vlumping", scale))
            runs.append(("murr_seasonal_saturated", "vlumping", scale))
        for scale in ("smoke", "sweep", "medium", "large"):
            runs.append(("murrumbidgee", "vlumping", scale))
            runs.append(("murrumbidgee", "vlumping_hmg", scale))
        for scale in ("s1", "s2", "s4", "s8", "s16", "s32"):
            runs.append(("murr_strong", "vlumping", scale))
        for scale in ("s2", "s4", "s8", "s16", "s32"):
            runs.append(("murr_strong", "vlumping_hmg", scale))

    elif phase == "strong":
        # Murrumbidgee strong scaling: fixed Δx=620m, 300 layers,
        # sweep nodes 1->32. vlumping_inexact carries the curve up to
        # 16 nodes (its coarse solve diverges at 3328 cores); at 32
        # nodes only vlumping_hmg's nested geometric MG coarse path is
        # well-conditioned enough to converge.
        for scale in ("s1", "s2", "s4", "s8", "s16", "s32"):
            runs.append(("murr_strong", "vlumping", scale))
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

    elif phase == "fair_all":
        # The whole campaign. Restrict with --solvers to run it in stages.
        for solver in FAIR_CORE_SOLVERS:
            for scale in ("sweep", "medium", "large"):
                runs.append(("cockett", solver, scale))
            for scale in ("smoke", "sweep", "medium", "large"):
                runs.append(("murrumbidgee", solver, scale))
            for scale in ("h1", "h2", "h4", "h8"):
                runs.append(("murr_horiz", solver, scale))
        for solver in FAIR_ABLATION_SOLVERS:
            for scale in ("h1", "h2", "h4", "h8"):
                runs.append(("murr_horiz", solver, scale))
        for solver in FAIR_STRONG_SOLVERS:
            for scale in ("s2", "s4", "s8", "s16", "s32"):
                runs.append(("murr_strong", solver, scale))
        for solver in FAIR_TOLERANCE_SOLVERS:
            runs.append(("murr_horiz", solver, "h8"))
            runs.append(("murrumbidgee", solver, "large"))
        # Does the incoherent lag keep its advantage on the basin?
        runs.append(("murr_horiz", "vlumping_hmg_rich_lag3_live", "h8"))

    elif phase == "fair_gap_fix":
        # Complete the fair campaign correctly. This supersedes the old
        # fair_improved_gap phase, which only added the two improved presets
        # onto a broken Cockett scale set. Two fixes:
        #
        #   (1) Cockett weak scaling now has a genuine 4-node/72M "large"
        #       point. cockett_cases() previously defined "large" and "huge"
        #       as the same 8-node/144M mesh, so the fair curve was really
        #       1/2/8 nodes and "huge" carried stale pre-fair data (mixed
        #       step counts per solver). "large" is now 4 nodes (72M) and
        #       "huge" is 8 nodes (144M).
        #   (2) Every fair-core solver — not just the improved presets — is
        #       re-run at the two corrected scales, so each Cockett column is
        #       one mesh on one 30-step trajectory. sweep (1 node) and medium
        #       (2 nodes) keep their existing fair runs; their meshes did not
        #       change.
        #
        # The Murrumbidgee vertical sweep was always clean (distinct meshes at
        # 1/2/4/8 nodes); it only lacked the two improved presets. Those are
        # added here. See NOTES/MUST-RUN.md.
        improved = ["vlumping_inexact_rich_lag3", "vlumping_hmg_rich_lag3"]
        # Cockett: re-run the fair-core baselines at the corrected large+huge.
        for solver in FAIR_CORE_SOLVERS:
            for scale in ("large", "huge"):
                runs.append(("cockett", solver, scale))
        # Cockett: the improved presets have no Cockett data yet — run all four
        # weak-scaling points.
        for solver in improved:
            for scale in ("sweep", "medium", "large", "huge"):
                runs.append(("cockett", solver, scale))
        # Murrumbidgee vertical: improved presets at 1/2/4/8 nodes.
        for solver in improved:
            for scale in ("smoke", "sweep", "medium", "large"):
                runs.append(("murrumbidgee", solver, scale))

    elif phase == "final_h8":
        # The complete setup-cost campaign at production scale: the two
        # presets that keep Chebyshev and lag the setup, and the four that
        # replace the smoother with a derived Richardson damping.
        for solver in SNAPSHOT_SOLVERS + RICH_SOLVERS:
            runs.append(("murr_horiz", solver, "h8"))

    elif phase == "final_smoke":
        for solver in SNAPSHOT_SOLVERS + RICH_SOLVERS:
            runs.append(("murr_horiz", solver, "h1"))

    elif phase == "snapshot_h8":
        for solver in SNAPSHOT_SOLVERS:
            runs.append(("murr_horiz", solver, "h8"))

    elif phase == "snapshot_smoke":
        for solver in SNAPSHOT_SOLVERS:
            runs.append(("murr_horiz", solver, "h1"))

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
                 "rich_smoke", "rich_h8",
                 "snapshot_smoke", "snapshot_h8",
                 "final_smoke", "final_h8", "fair_all",
                 "fair_gap_fix",
                 "monthly_murr", "monthly_murr_smoke",
                 "seasonal", "seasonal_saturated", "seasonal_hmg",
                 "linesmooth_lag3", "linesmooth_lag3_smoke",
                 "linesmooth_attribution", "final_richardson"],
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
                 "murr_strong", "murr_hierarchy", "murr_monthly",
                 "murr_seasonal", "murr_seasonal_saturated"],
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
        for case, solver, scale, degree in runs:
            for path in clear_existing_outputs(
                case, solver, scale, output_dir, degree
            ):
                print(f"  Removed: {path.name}")

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
