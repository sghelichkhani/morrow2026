# ---------------------------------------------------------------------------
# Strategy 5 (Baseline AMG): GAMG with Corrected Options
# ---------------------------------------------------------------------------
# PETSc's native algebraic multigrid. This is the corrected version of the
# GAMG preset from the paper. The original had a bug: options were prefixed
# with "assembled_pc_gamg_*", which is only honoured inside an AssembledPC
# wrapper (mat_type=matfree). With mat_type=aij, those options were silently
# ignored, so GAMG was running with PETSc defaults.
#
# Changes from the paper version:
#   - Removed "assembled_" prefix from all GAMG options
#   - Replaced deprecated pc_gamg_square_graph with pc_gamg_aggressive_coarsening
#   - Added proper coarse_eq_limit and process_eq_limit
#   - Better smoother configuration (Chebyshev + BJacobi with ILU sub-solves)
#
# This is a good general-purpose preset but not optimised for anisotropy
# or DG specifically. For those cases, use boomeramg.py or gamg_asm.py.
#
# Key diagnostics:
#   * -pc_gamg_view (hierarchy structure, complexity ratios)
#   * Target operator complexity: < 2.0
#   * Linear iterations: 15-30 for Cockett, may grow for Murrumbidgee
# ---------------------------------------------------------------------------

solver_parameters = {
    # === Outer Krylov method ===
    "ksp_type": "gmres",
    "ksp_rtol": 1e-6,
    "ksp_max_it": 200,
    "ksp_gmres_restart": 30,

    # === Preconditioner: GAMG ===
    "pc_type": "gamg",
    "pc_gamg_type": "agg",                     # smoothed aggregation

    # --- Coarsening ---
    "pc_gamg_threshold": 0.02,                 # ← TUNE: 0.0-0.1
    "pc_gamg_aggressive_coarsening": 1,        # MIS-2 on first level
    "pc_gamg_coarse_eq_limit": 1000,           # stop coarsening threshold
    "pc_gamg_process_eq_limit": 50,

    # --- Prolongation ---
    "pc_gamg_agg_nsmooths": 1,                 # prolongator smoothing
    "pc_gamg_reuse_interpolation": True,

    # === Multigrid level smoother ===
    "mg_levels_ksp_type": "chebyshev",
    "mg_levels_ksp_max_it": 2,                 # ← TUNE: 1-3
    "mg_levels_ksp_convergence_test": "skip",
    "mg_levels_pc_type": "bjacobi",
    "mg_levels_sub_pc_type": "ilu",
    "mg_levels_sub_pc_factor_levels": 0,

    # === Coarse grid solver ===
    "mg_coarse_ksp_type": "gmres",
    "mg_coarse_ksp_max_it": 30,
    "mg_coarse_pc_type": "bjacobi",
    "mg_coarse_sub_pc_type": "ilu",

    # === Nonlinear solver ===
    "snes_type": "newtonls",
    "snes_linesearch_type": "bt",
    "snes_rtol": 1e-8,
    "snes_atol": 1e-8,
    "snes_max_it": 50,
}
