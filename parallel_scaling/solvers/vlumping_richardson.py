# STATUS: ablation. Not a recommended default; run to answer one narrow question.
# VLumping variant: Richardson(omega=0.5) + BJacobi/ILU, 2 sweeps.
# Richardson avoids the eigenvalue estimation cost of Chebyshev.
# The fixed damping factor omega=0.5 is conservative; the tradeoff
# is slower convergence per sweep vs cheaper setup on each Newton step
# (no Chebyshev eigenvalue re-estimation during pc.setUp).

from .vlumping_rtol6 import VerticallyLumpedPC  # noqa: F401 (needed for pc_python_type)

solver_parameters = {
    "ksp_type": "fgmres",
    "ksp_rtol": 1e-6,
    "ksp_max_it": 200,
    "ksp_gmres_restart": 30,

    "pc_type": "python",
    "pc_python_type": "solvers.vlumping_rtol6.VerticallyLumpedPC",

    "lumped_mg_levels_ksp_type": "richardson",
    "lumped_mg_levels_ksp_richardson_scale": 0.5,
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
    "snes_atol": 1e-8,
    "snes_max_it": 50,
}
