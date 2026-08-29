# STATUS: reported. The paper computes numbers from runs of this preset.
# ---------------------------------------------------------------------------
# Strategy 1: Geometric Multigrid with Horizontal-Only Coarsening (GMG-H)
# ---------------------------------------------------------------------------
# Best overall strategy for high-aspect-ratio extruded meshes (Murrumbidgee).
# Requires a mesh hierarchy built from horizontal-only refinement:
#   mh2d = MeshHierarchy(m2d, refinement_levels)
#   mesh = ExtrudedMeshHierarchy(mh2d, ...)[-1]
# Vertical layer count stays fixed across all levels, so coarsening only
# reduces horizontal resolution. This matches the anisotropy of the mesh
# and prevents mixing vertical/horizontal couplings on coarse levels.
#
# Paper results (Morrow et al. 2026):
#   Cockett 3D: 13-14 iterations, near-flat weak scaling to 32 nodes.
#   Murrumbidgee: best iteration-rate stability across all node counts.
#
# Performance characteristics:
#   + Near mesh-independent iteration counts
#   + Excellent weak scaling for anisotropic extruded meshes
#   + Predictable memory usage
#   - Requires mesh hierarchy construction (extra setup cost)
#   - Coarse grid direct solve limits extreme parallelism
#
# Key diagnostics (from -ksp_view / -snes_view):
#   * Number of MG levels: should match refinement_levels + 1
#   * Coarse grid size: should be small enough for direct solve
#   * Linear iterations per Newton step: target 10-20
#   * Smoother residual reduction: check with -mg_levels_ksp_monitor
# ---------------------------------------------------------------------------

solver_parameters = {
    # === Outer Krylov method ===
    # FGMRES because MG with varying smoother behaviour is a variable
    # preconditioner. Standard GMRES assumes a fixed preconditioner and
    # can stagnate or diverge when the PC changes between iterations.
    "ksp_type": "fgmres",                     # ← TUNE: try "gmres" if smoother is stationary
    # Matched across the compared solvers for the 2026-08 fair-comparison
    # campaign: every preset in the paper's table now uses the same inexact
    # Newton tolerance and the same SNES block, so a difference in wall time
    # is a difference in the preconditioner and nothing else. The VLumping
    # presets have used 1e-4 since Round 3; these baselines used 1e-6, which
    # bought them fewer Newton steps at the cost of much more expensive
    # linear solves.
    "ksp_rtol": 1e-4,
    "ksp_max_it": 200,                         # safety cap
    "ksp_gmres_restart": 30,                   # restart length for (F)GMRES

    # === Multigrid preconditioner ===
    "pc_type": "mg",
    "pc_mg_type": "multiplicative",            # V-cycle (default). Alt: "full" for F-cycle
    "pc_mg_cycle_type": "v",                   # ← TUNE: "w" for harder problems (2x cost)

    # === Level smoother ===
    # Chebyshev + BJacobi/ILU is the proven combination from the paper.
    # Chebyshev needs eigenvalue bounds; PETSc estimates them automatically.
    "mg_levels_ksp_type": "chebyshev",         # ← TUNE: try "richardson" with damping
    "mg_levels_ksp_max_it": 1,                 # ← TUNE: 2-3 for harder problems
    "mg_levels_ksp_convergence_test": "skip",  # smoother, not a solver
    "mg_levels_pc_type": "bjacobi",            # block Jacobi on each MPI rank
    "mg_levels_sub_pc_type": "ilu",            # ILU(0) within each block
    "mg_levels_sub_pc_factor_levels": 0,       # ILU fill level

    # === Coarse grid solver ===
    # Direct solve via MUMPS is robust. For extreme parallelism (>1000 cores),
    # consider switching to a redundant or telescope solve to avoid the
    # bottleneck of collecting the coarse problem on one rank.
    "mg_coarse_ksp_type": "gmres",
    "mg_coarse_ksp_max_it": 30,
    "mg_coarse_pc_type": "bjacobi",
    "mg_coarse_sub_pc_type": "ilu",

    # === Nonlinear solver ===
    "snes_type": "newtonls",
    "snes_linesearch_type": "bt",              # backtracking line search
    "snes_rtol": 1e-8,
    "snes_atol": 1e-12,
    "snes_stol": 1e-8,
    "snes_max_it": 50,

    # === Diagnostics (uncomment as needed) ===
    # "snes_monitor": None,
    # "snes_converged_reason": None,
    # "ksp_converged_reason": None,
    # "ksp_monitor_true_residual": None,
    # "mg_levels_ksp_monitor": None,            # smoother convergence
}
