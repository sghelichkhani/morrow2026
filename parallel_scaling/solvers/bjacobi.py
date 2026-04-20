# ---------------------------------------------------------------------------
# Baseline: Block-Jacobi with ILU(0)
# ---------------------------------------------------------------------------
# Simple single-level preconditioner. Each MPI rank solves its local block
# independently with ILU(0). No coarse-grid correction means long-wavelength
# error modes are not addressed, so iteration counts grow with mesh
# refinement (not mesh-independent).
#
# Why it works acceptably for Richards on extruded meshes:
#   Domain decomposition assigns vertical columns to each rank, and ILU(0)
#   effectively resolves the vertical coupling within each block (acting
#   as a line smoother). The paper confirms iteration counts are independent
#   of vertical resolution for this reason.
#
# Paper results:
#   Cockett 3D: 55-200 iterations across scaling range
#   Murrumbidgee: works but iterations grow with horizontal refinement
#
# Performance expectations:
#   + Lowest setup cost (no hierarchy, no AMG setup)
#   + Low memory footprint
#   + Simple, no tuning needed
#   - Iterations grow with mesh refinement (O(h^{-1}) scaling)
#   - Not suitable as primary solver for very large problems
#   - Good as smoother within multigrid or as fallback
# ---------------------------------------------------------------------------

solver_parameters = {
    # === Outer Krylov method ===
    "ksp_type": "gmres",
    "ksp_rtol": 1e-6,
    "ksp_max_it": 500,                         # needs more iterations
    "ksp_gmres_restart": 30,                   # ← TUNE: 50 if stalling

    # === Preconditioner: Block-Jacobi ===
    "pc_type": "bjacobi",
    "sub_ksp_type": "preonly",
    "sub_pc_type": "ilu",
    "sub_pc_factor_levels": 0,                 # ← TUNE: 1-2 for better fill

    # === Nonlinear solver ===
    "snes_type": "newtonls",
    "snes_linesearch_type": "bt",
    "snes_rtol": 1e-8,
    "snes_atol": 1e-8,
    "snes_max_it": 50,
}
