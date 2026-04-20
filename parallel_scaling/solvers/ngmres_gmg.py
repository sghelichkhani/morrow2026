# ---------------------------------------------------------------------------
# SNES Variant: NGMRES (Anderson Acceleration) + GMG Preconditioner
# ---------------------------------------------------------------------------
# Nonlinear GMRES (NGMRES) wraps an inner nonlinear solver and accelerates
# its convergence using a subspace built from previous iterates. It is
# equivalent to Anderson mixing / Nonlinear Krylov Acceleration (NKA).
#
# Literature support:
#   - Lipnikov et al. (2016): NKA with physics-based preconditioner was the
#     fastest solver, outperforming both Picard and JFNK.
#   - Lott et al. (2012): Anderson acceleration specifically for Richards
#     equation, confirmed superlinear convergence.
#   - Walker & Ni (2011): convergence theory.
#
# How NGMRES works in PETSc:
#   NGMRES maintains a window of m previous iterates. At each step:
#   1. Compute a "candidate" from the inner SNES (Newton step)
#   2. Find the optimal linear combination of the candidate and the
#      m previous iterates that minimises the residual
#   3. Use selection criteria to choose between the combination and
#      the plain Newton step
#
# This is particularly effective when:
#   - Newton converges slowly (stiff nonlinearity, poor initial guess)
#   - The Jacobian is expensive to form/factor (NGMRES reuses history)
#   - The problem is nearly singular (NGMRES adds regularisation)
#
# For Richards equation, NGMRES can reduce the number of Newton iterations
# needed per timestep, especially during sharp wetting front propagation
# where standard Newton struggles.
#
# This preset combines NGMRES with the GMG preconditioner (Strategy 1).
# The inner SNES is Newton with line search.
# ---------------------------------------------------------------------------

solver_parameters = {
    # === Nonlinear solver: NGMRES ===
    "snes_type": "ngmres",
    "snes_rtol": 1e-8,
    "snes_atol": 1e-8,
    "snes_max_it": 50,

    # --- NGMRES-specific options ---
    # Window size: number of stored past iterates. Larger = better
    # acceleration but more memory and more work per NGMRES step.
    "snes_ngmres_m": 30,                       # ← TUNE: 10-50

    # Restart: forced restart after this many iterations.
    "snes_ngmres_restart": 30,                 # ← TUNE: match m

    # Selection type: how to choose between candidates.
    # "difference": use difference criterion (default, robust)
    # "linesearch": use a line search to select
    # "none": always accept the NGMRES combination
    "snes_ngmres_select_type": "difference",   # ← TUNE

    # Restart type: when to restart the subspace.
    # "difference": restart when progress stalls
    # "periodic": restart every snes_ngmres_restart iterations
    # "none": never restart (relies on window size)
    "snes_ngmres_restart_type": "difference",  # ← TUNE

    # gammaA: residual selection constant. Candidate is accepted if
    # its residual < gammaA * best residual so far.
    "snes_ngmres_gammaA": 2.0,                 # ← TUNE: 1.0-5.0

    # gammaC: restart constant. Restart if residual > gammaC * best.
    "snes_ngmres_gammaC": 2.0,                 # ← TUNE: 1.0-5.0

    # --- Inner SNES (Newton) ---
    # The inner solver is configured via the npc_ prefix.
    # PETSc default inner is newtonls.
    "npc_snes_type": "newtonls",
    "npc_snes_linesearch_type": "bt",
    "npc_snes_max_it": 1,                      # one Newton step per NGMRES iter

    # === Linear solver (used by inner Newton) ===
    "ksp_type": "fgmres",
    "ksp_rtol": 1e-6,
    "ksp_max_it": 200,
    "ksp_gmres_restart": 30,

    # === Preconditioner: GMG (same as Strategy 1) ===
    "pc_type": "mg",
    "pc_mg_cycle_type": "v",
    "mg_levels_ksp_type": "chebyshev",
    "mg_levels_ksp_max_it": 1,
    "mg_levels_ksp_convergence_test": "skip",
    "mg_levels_pc_type": "bjacobi",
    "mg_levels_sub_pc_type": "ilu",
    "mg_levels_sub_pc_factor_levels": 0,
    "mg_coarse_ksp_type": "gmres",
    "mg_coarse_ksp_max_it": 30,
    "mg_coarse_pc_type": "bjacobi",
    "mg_coarse_sub_pc_type": "ilu",
}
