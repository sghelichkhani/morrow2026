# ---------------------------------------------------------------------------
# Strategy 2: Hypre BoomerAMG with Anisotropy-Aware Settings
# ---------------------------------------------------------------------------
#
# NOTE (2026-04): this is the paper's tuned BoomerAMG preset used for the
# Cockett / Murrumbidgee scaling runs in `parsed/`. It is NOT identical to
# the `iterative` preset shipped in g-adopt
# (`gadopt.richards_solver.iterative_richards_solver_parameters`). The
# shipped preset uses more conservative defaults:
#   strong_threshold=0.7, agg_nl=1, no truncfactor/P_max, ksp_rtol=1e-5.
# The settings below (strong_threshold=0.5, agg_nl=2, truncfactor=0.3,
# P_max=4, ksp_rtol=1e-6) are what produced the Cockett table in §4 of
# SOLVER-STUDY.md and the figures under `figures/`. Keep them unchanged
# unless you intend to regenerate the paper's scaling numbers with a
# different BoomerAMG configuration.
#
# ---------------------------------------------------------------------------
# BoomerAMG is the most widely used AMG in the Richards equation literature
# (Herbst et al. 2008, Bertaccini et al. 2022). It was the top-ranked
# preconditioner in Herbst et al.'s parallel comparison study and scaled to
# 8192 cores in Bertaccini et al.'s Marconi-100 experiments.
#
# Unlike PETSc's GAMG, BoomerAMG offers fine-grained control over:
#   - Strength-of-connection threshold (critical for anisotropy)
#   - Coarsening algorithm (HMIS, PMIS for better parallel coarsening)
#   - Interpolation type (ext+i for anisotropic problems)
#   - Relaxation types (directional smoothers for convection)
#
# For the Murrumbidgee case (1000:1 aspect ratio), the key settings are:
#   - strong_threshold = 0.5-0.7 (default 0.25 is for 2D isotropic)
#   - HMIS coarsening (better for anisotropy than default Falgout)
#   - ext+i interpolation (handles anisotropic stencils)
#   - Aggressive coarsening on first 1-2 levels
#
# This strategy does NOT require a mesh hierarchy (pure algebraic).
# If it matches GMG-H performance, it's strictly easier to deploy.
#
# Performance expectations:
#   + No mesh hierarchy construction needed
#   + Well-established parallel scaling to O(1000) cores
#   + Rich tuning options for anisotropy
#   - May not match GMG-H for extreme anisotropy (can't enforce
#     horizontal-only coarsening explicitly)
#   - More tuning parameters than GMG
#
# Key diagnostics:
#   * -pc_hypre_boomeramg_print_statistics 1
#     Shows: levels, operator complexity, grid complexity, smoother info
#     Target operator complexity: < 2.0 (ideally < 1.5)
#     Target grid complexity: < 2.0
#   * Linear iterations per Newton step: target 10-30
#   * If iterations > 50: increase strong_threshold or sweeps
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
    "ksp_max_it": 200,
    "ksp_gmres_restart": 30,                   # ← TUNE: 50-100 if convergence stalls

    # === Preconditioner: Hypre BoomerAMG ===
    "pc_type": "hypre",
    "pc_hypre_type": "boomeramg",

    # --- Strength of connection ---
    # CRITICAL for anisotropy. Default 0.25 is for 2D isotropic.
    # For 3D with high aspect ratio, 0.5-0.7 is recommended.
    # Higher = only strong connections kept = coarsening respects anisotropy.
    "pc_hypre_boomeramg_strong_threshold": 0.5,  # ← TUNE: 0.25-0.7

    # --- Coarsening algorithm ---
    # Falgout (default) can struggle with anisotropy.
    # HMIS: Hybrid Modified Independent Set — better parallel scaling and
    # anisotropy handling than Falgout.
    # PMIS: Parallel Modified Independent Set — even more parallel but
    # can produce slightly worse coarsening.
    "pc_hypre_boomeramg_coarsen_type": "HMIS",   # ← TUNE: "Falgout", "PMIS"

    # --- Interpolation type ---
    # Classical (default) can smear anisotropic features.
    # ext+i: Extended+i interpolation — designed for anisotropic problems.
    # Builds interpolation from a larger neighbourhood, preserving
    # directional information.
    "pc_hypre_boomeramg_interp_type": "ext+i",   # ← TUNE: "classical", "multipass"

    # --- Aggressive coarsening ---
    # Apply aggressive coarsening on the first N levels from finest.
    # Reduces operator complexity at the cost of slightly worse
    # interpolation on those levels. Important for large 3D problems.
    "pc_hypre_boomeramg_agg_nl": 2,              # ← TUNE: 0 (off), 1, 2

    # Number of paths for aggressive coarsening (higher = better quality
    # but more expensive setup).
    "pc_hypre_boomeramg_agg_num_paths": 2,       # ← TUNE: 1-4

    # --- Interpolation truncation ---
    # Truncation factor: drop entries smaller than this fraction of the
    # largest entry in each row of the interpolation operator.
    # Reduces operator complexity.
    "pc_hypre_boomeramg_truncfactor": 0.3,        # ← TUNE: 0.0 (off) to 0.5

    # P_max: maximum number of elements per row in interpolation.
    # 0 = unlimited. Limiting to 4-8 controls complexity.
    "pc_hypre_boomeramg_P_max": 4,                # ← TUNE: 0 (unlimited), 4-8

    # --- Cycle type ---
    "pc_hypre_boomeramg_cycle_type": "V",         # ← TUNE: "W" for harder problems
    "pc_hypre_boomeramg_max_levels": 25,          # usually auto-determined

    # --- Smoother / relaxation ---
    # Default: symmetric-SOR/Jacobi (type 6) — good for SPD systems.
    # For nonsymmetric Jacobian (Newton on Richards), l1-Gauss-Seidel
    # (type 13/14) is better at handling convective components.
    # Symmetric smoothers are needed if using CG as outer Krylov.
    "pc_hypre_boomeramg_relax_type_all": "symmetric-SOR/Jacobi",  # ← TUNE
    # Alternatives for nonsymmetric systems:
    # "l1-Gauss-Seidel"         (type 13, forward)
    # "backward-l1-Gauss-Seidel" (type 14, backward)
    # "Chebyshev"               (type 16, polynomial)

    # Number of smoother sweeps per level (pre and post).
    "pc_hypre_boomeramg_grid_sweeps_down": 1,     # ← TUNE: 2-3 for hard problems
    "pc_hypre_boomeramg_grid_sweeps_up": 1,       # ← TUNE: 2-3 for hard problems

    # --- Coarse grid ---
    "pc_hypre_boomeramg_max_coarse_size": 128,    # ← TUNE: stop coarsening here

    # --- Row sum threshold ---
    # Controls C/F splitting. Default 0.9 works well for scalar problems.
    "pc_hypre_boomeramg_max_row_sum": 0.9,

    # --- Diagnostics ---
    # Uncomment to see AMG hierarchy structure:
    # "pc_hypre_boomeramg_print_statistics": 1,

    # === Nonlinear solver ===
    "snes_type": "newtonls",
    "snes_linesearch_type": "bt",
    "snes_rtol": 1e-8,
    "snes_atol": 1e-12,
    "snes_stol": 1e-8,
    "snes_max_it": 50,
}
