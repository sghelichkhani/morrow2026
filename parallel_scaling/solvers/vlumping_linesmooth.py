# VLumping variant: vertical-line smoother at the fine level.
#
# Replaces the fine-level Chebyshev + BJacobi/ILU point smoother with a
# Firedrake ASMLinesmoothPC patch solver: one patch per vertical column
# (codim 0 on the base mesh), each patch factorised by LU. This eats the
# anisotropic vertical coupling exactly, so a single sweep is usually
# enough. The coarse solve (2D R-space projection) is left unchanged at
# LU/MUMPS. Inexact Newton (ksp_rtol=1e-4) carried over from the
# vlumping_inexact baseline since it consistently won in Round 3.
#
# Hypothesis: exact column solves damp vertical error modes in one
# application, so outer Krylov iteration counts drop below the
# vlumping_inexact baseline (1152 at the large Murrumbidgee scale).

from .vlumping import VerticallyLumpedPC  # noqa: F401 (needed for pc_python_type)

solver_parameters = {
    "ksp_type": "fgmres",
    "ksp_rtol": 1e-4,
    "ksp_max_it": 200,
    "ksp_gmres_restart": 30,

    "pc_type": "python",
    "pc_python_type": "solvers.vlumping.VerticallyLumpedPC",

    # --- Fine-level smoother: Chebyshev wrapping a column-exact ASM ---
    "lumped_mg_levels_ksp_type": "chebyshev",
    "lumped_mg_levels_ksp_max_it": 1,
    "lumped_mg_levels_ksp_convergence_test": "skip",
    "lumped_mg_levels_pc_type": "python",
    "lumped_mg_levels_pc_python_type": "firedrake.ASMLinesmoothPC",
    # codims="0": one patch per base cell (column above each base cell).
    # Try "0,1" if iteration counts are too high (adds facet-column overlap
    # at roughly 2x the smoother cost).
    "lumped_mg_levels_pc_linesmooth_codims": "0",
    # Inner ASM's sub-KSP PC. The outer ASM PC has prefix "..._sub_", so the
    # patch-local sub-PC lives under "..._sub_sub_". Using "..._sub_pc_type"
    # (single sub_) hits the ASM PC's own type and downgrades it to LU on
    # the full rank-local matrix -- an instant OOM.
    "lumped_mg_levels_pc_linesmooth_sub_sub_pc_type": "lu",
    "lumped_mg_levels_pc_linesmooth_sub_sub_pc_factor_mat_ordering_type": "natural",

    # --- Coarse solver: unchanged from vlumping_inexact baseline ---
    "lumped_mg_coarse_ksp_type": "preonly",
    "lumped_mg_coarse_pc_type": "lu",
    "lumped_mg_coarse_pc_factor_mat_solver_type": "mumps",

    # SNES block matched to gadopt's _newton_common (and the other compared
    # presets) for the monthly-Murrumbidgee fair comparison. The former loose
    # snes_atol 1e-8 with no snes_stol let this preset declare convergence up
    # to four orders earlier than the others on the quasi-steady plateau, where
    # warm-started residuals fall below rtol*R0 — a fairness break. Aligned
    # 2026-08-27 (Fable review B2).
    "snes_type": "newtonls",
    "snes_linesearch_type": "bt",
    "snes_rtol": 1e-8,
    "snes_atol": 1e-12,
    "snes_stol": 1e-8,
    "snes_max_it": 50,
}
