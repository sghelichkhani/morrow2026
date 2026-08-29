# STATUS: reported. The paper computes numbers from runs of this preset.
# ---------------------------------------------------------------------------
# Strategy 3: GAMG with DG-Aware ASM Smoother (GAMG-ASM)
# ---------------------------------------------------------------------------
# PETSc's GAMG with a critical DG-specific feature: pc_gamg_asm_use_agg.
# This tells GAMG to use the aggregates it computes during coarsening as
# the subdomains for an Additive Schwarz Method (ASM) smoother, rather than
# the default point-wise Jacobi smoother.
#
# Why this matters for DG:
#   Standard point-Jacobi smoothing treats each DOF independently. For DG
#   discretisations, DOFs within an element are tightly coupled (the mass
#   matrix block-diagonal structure), while inter-element coupling comes
#   only through facet integrals. Point-Jacobi ignores this block structure.
#   ASM with aggregation-based subdomains naturally groups element DOFs
#   together, providing much better smoothing for DG.
#
# This approach was found in PETSc's own test suite (ex56.c) for problems
# with block structure similar to DG.
#
# NOTE: The previous GAMG preset had a bug — options were prefixed with
# "assembled_pc_gamg_*" which is only honoured inside an AssembledPC
# wrapper (matfree mode). With mat_type=aij, those options were silently
# ignored. This preset uses the correct unprefixed options.
#
# Performance expectations:
#   + Better smoothing for DG than standard GAMG with point-Jacobi
#   + No mesh hierarchy needed (pure algebraic)
#   + Aggregation naturally respects element structure
#   - More expensive per iteration than point-Jacobi smoothing
#   - May need threshold tuning for anisotropic meshes
#
# Key diagnostics:
#   * -pc_gamg_view (check that ASM smoother is active on levels)
#   * Operator complexity and grid complexity
#   * Linear iterations: target 10-25 (should be fewer than plain GAMG)
# ---------------------------------------------------------------------------

solver_parameters = {
    # === Outer Krylov method ===
    "ksp_type": "gmres",
    "ksp_rtol": 1e-6,                          # ← TUNE: 1e-4 for inexact Newton
    "ksp_max_it": 200,
    "ksp_gmres_restart": 30,

    # === Preconditioner: GAMG with ASM smoother ===
    "pc_type": "gamg",
    "pc_gamg_type": "agg",                     # smoothed aggregation

    # --- DG-aware ASM smoother ---
    # THIS IS THE KEY OPTION: use GAMG's aggregates as ASM subdomains.
    # Each aggregate groups tightly-coupled DOFs (typically one or a few
    # elements), and ASM solves a small local problem on each aggregate.
    "pc_gamg_asm_use_agg": True,               # ← CRITICAL for DG

    # When asm_use_agg is True, the mg_levels smoother is automatically
    # set to ASM. Configure the sub-solver within each aggregate:
    "mg_levels_pc_type": "asm",
    "mg_levels_pc_asm_overlap": 0,             # ← TUNE: 1-2 for more coupling
    "mg_levels_sub_pc_type": "lu",             # exact solve within each aggregate
    # Alternative: "ilu" for cheaper sub-solves (less robust)

    "mg_levels_ksp_type": "chebyshev",         # ← TUNE: "richardson"
    "mg_levels_ksp_max_it": 1,                 # ← TUNE: 2-3 for harder problems
    "mg_levels_ksp_convergence_test": "skip",

    # --- Coarsening parameters ---
    # Threshold controls strength-of-connection for aggregation.
    # For anisotropic meshes, a small positive threshold helps GAMG
    # detect the strong/weak connections.
    "pc_gamg_threshold": 0.02,                 # ← TUNE: 0.0 to 0.1
    "pc_gamg_threshold_scale": 1.0,            # threshold multiplier per level

    # --- Aggregation quality ---
    "pc_gamg_agg_nsmooths": 1,                 # prolongator smoothing steps
    "pc_gamg_aggressive_coarsening": 1,        # ← TUNE: 0-2
    "pc_gamg_aggressive_square_graph": True,   # use A^T*A for aggressive levels

    # --- Coarse grid control ---
    "pc_gamg_coarse_eq_limit": 1000,           # ← TUNE: stop coarsening threshold
    "pc_gamg_process_eq_limit": 50,            # DOFs per process on coarse levels

    # --- Eigenvalue estimation for Chebyshev ---
    "pc_gamg_use_sa_esteig": True,             # SA eigenvalue estimates
    "pc_gamg_recompute_esteig": True,          # recompute when matrix changes

    # --- Interpolation reuse ---
    "pc_gamg_reuse_interpolation": True,       # reuse prolongation across solves

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
