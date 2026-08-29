# STATUS: ablation. Not a recommended default; run to answer one narrow question.
# ---------------------------------------------------------------------------
# SNES Variant: Quasi-Newton (L-BFGS) + GMG Preconditioner
# ---------------------------------------------------------------------------
# L-BFGS builds an approximate Jacobian inverse from a history of m
# previous step/gradient pairs. Each iteration costs roughly the same as
# one preconditioned residual evaluation — no Jacobian assembly needed
# beyond the preconditioner.
#
# For Richards equation:
#   - If Jacobian assembly is expensive (fine mesh, complex soil curves),
#     L-BFGS avoids rebuilding it at every iteration.
#   - Acts like a Jacobian-lagged Newton with optimal secant updates.
#   - Combined with GMG, the preconditioner handles the spatial error
#     while L-BFGS handles the nonlinear update direction.
#
# This is an experimental option. The literature on L-BFGS for Richards
# is sparse, but the general PDE community uses it successfully for
# nonlinear diffusion problems.
#
# Key diagnostics:
#   * snes_qn_monitor: shows Jacobian condition estimates
#   * Watch for Powell restarts: if frequent, the problem is too nonlinear
#     for L-BFGS and Newton should be used instead.
# ---------------------------------------------------------------------------

solver_parameters = {
    # === Nonlinear solver: Quasi-Newton (L-BFGS) ===
    "snes_type": "qn",
    "snes_rtol": 1e-8,
    "snes_atol": 1e-8,
    "snes_max_it": 50,

    # --- L-BFGS options ---
    "snes_qn_type": "lbfgs",                  # L-BFGS variant
    "snes_qn_m": 10,                           # ← TUNE: history size (5-30)
    "snes_qn_restart_type": "powell",          # restart on poor angle
    "snes_qn_powell_gamma": 0.9999,            # angle tolerance for restart
    "snes_qn_scale_type": "jacobian",          # ← TUNE: "diagonal", "scalar", "none"
    # "jacobian": use the preconditioner as initial Jacobian inverse
    # "diagonal": diagonal scaling
    # "scalar": scalar scaling
    # "none": identity initial inverse

    # Line search: L-BFGS default is CP (critical point).
    "snes_linesearch_type": "cp",              # ← TUNE: "bt" for more robustness
    "snes_linesearch_order": 3,                # cubic polynomial fitting

    # === Linear solver (for preconditioner application) ===
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
