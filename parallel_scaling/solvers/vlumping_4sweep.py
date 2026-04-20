# VLumping variant: Chebyshev + BJacobi/ILU, 4 smoother sweeps.
# Tests whether additional smoothing reduces iteration count enough
# to offset the extra cost per V-cycle.

from .vlumping import VerticallyLumpedPC  # noqa: F401 (needed for pc_python_type)

solver_parameters = {
    "ksp_type": "fgmres",
    "ksp_rtol": 1e-6,
    "ksp_max_it": 200,
    "ksp_gmres_restart": 30,

    "pc_type": "python",
    "pc_python_type": "solvers.vlumping.VerticallyLumpedPC",

    "lumped_mg_levels_ksp_type": "chebyshev",
    "lumped_mg_levels_ksp_max_it": 4,
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
    "snes_atol": 1e-8,
    "snes_max_it": 50,
}
