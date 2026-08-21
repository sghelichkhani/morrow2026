"""VLumping-HMG with BJacobi-ILU(0) as the fine smoother."""

from gadopt.preconditioners import VerticallyLumpedHMGPC  # noqa: F401
from gadopt.richards_solver import vlumping_hmg_richards_solver_parameters


solver_parameters = dict(vlumping_hmg_richards_solver_parameters)

# Change only the fine-level PC. Keep the HMG baseline's one Chebyshev
# iteration and its geometric coarse hierarchy.
for option in (
    "lumped_mg_levels_pc_python_type",
    "lumped_mg_levels_pc_linesmooth_codims",
    "lumped_mg_levels_pc_linesmooth_sub_sub_pc_type",
):
    solver_parameters.pop(option)

solver_parameters.update({
    "lumped_mg_levels_pc_type": "bjacobi",
    "lumped_mg_levels_sub_pc_type": "ilu",
    "lumped_mg_levels_sub_pc_factor_levels": 0,
})
