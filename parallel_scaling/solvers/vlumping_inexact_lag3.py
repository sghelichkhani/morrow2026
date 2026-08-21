"""VLumping with one preconditioner setup per three Newton iterations."""

from gadopt.preconditioners import VerticallyLumpedPC  # noqa: F401
from gadopt.richards_solver import vlumping_richards_solver_parameters


solver_parameters = dict(vlumping_richards_solver_parameters)
solver_parameters["snes_lag_preconditioner"] = 3
