# Vertically Lumped Multigrid (VLumping) — scaling-study shim.
#
# The VerticallyLumpedPC class now lives in gadopt/preconditioners.py and is
# re-exported at top level as gadopt.VerticallyLumpedPC. This file used to
# carry its own copy during the development of the paper; it is now a thin
# re-export so this directory stays in lockstep with the shipped g-adopt
# API. See SOLVER-STUDY.md §6 for the algorithmic description.
#
# The `solver_parameters` dict below is the *baseline* VLumping preset used
# in the paper's Cockett Round 3 table (2 Chebyshev sweeps, tight ksp_rtol).
# It differs from g-adopt's shipped `vlumping` preset (which uses inexact
# Newton with ksp_rtol=1e-4, i.e. what we call `vlumping_inexact`). The
# other parameter-ablation variants in this directory (vlumping_1sweep,
# vlumping_4sweep, vlumping_richardson, vlumping_sor) import the PC class
# from this module and only override the smoother dict.

from gadopt.preconditioners import VerticallyLumpedPC  # noqa: F401  (re-export)

solver_parameters = {
    "ksp_type": "fgmres",
    "ksp_rtol": 1e-6,
    "ksp_max_it": 200,
    "ksp_gmres_restart": 30,

    "pc_type": "python",
    "pc_python_type": "gadopt.VerticallyLumpedPC",

    "lumped_mg_levels_ksp_type": "chebyshev",
    "lumped_mg_levels_ksp_max_it": 2,
    "lumped_mg_levels_ksp_convergence_test": "skip",
    "lumped_mg_levels_pc_type": "bjacobi",
    "lumped_mg_levels_sub_pc_type": "ilu",
    "lumped_mg_levels_sub_pc_factor_levels": 0,

    "lumped_mg_coarse_ksp_type": "preonly",
    "lumped_mg_coarse_pc_type": "lu",
    "lumped_mg_coarse_pc_factor_mat_solver_type": "mumps",

    "snes_type": "newtonls",
    "snes_linesearch_type": "bt",
    "snes_rtol": 1e-8,
    "snes_atol": 1e-12,
    "snes_stol": 1e-8,
    "snes_max_it": 50,
}
