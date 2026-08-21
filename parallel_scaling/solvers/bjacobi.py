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
    # Right preconditioning, so that ksp_rtol means the same thing here as it
    # does for the VLumping presets. PETSc's GMRES defaults to left
    # preconditioning with a preconditioned residual norm
    # (gmres.c:880, priority 4), while FGMRES only supports right
    # preconditioning with the true residual norm (fgmres.c:550). Matching
    # ksp_rtol without matching the side would compare ||B^-1 r|| against
    # ||r||, and the gap between them grows with the quality of the
    # preconditioner, which is the very thing under test.
    "ksp_pc_side": "right",
    # Matched across the compared solvers for the 2026-08 fair-comparison
    # campaign: every preset in the paper's table now uses the same inexact
    # Newton tolerance and the same SNES block, so a difference in wall time
    # is a difference in the preconditioner and nothing else. The VLumping
    # presets have used 1e-4 since Round 3; these baselines used 1e-6, which
    # bought them fewer Newton steps at the cost of much more expensive
    # linear solves.
    "ksp_rtol": 1e-4,
    "ksp_max_it": 200,                         # needs more iterations
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
    "snes_atol": 1e-12,
    "snes_stol": 1e-8,
    "snes_max_it": 50,
}
