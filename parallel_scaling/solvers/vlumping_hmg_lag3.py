# STATUS: ablation. Not a recommended default; run to answer one narrow question.
"""VLumping-HMG with one preconditioner setup per three Newton iterations."""

from gadopt.preconditioners import VerticallyLumpedHMGPC  # noqa: F401
from gadopt.richards_solver import vlumping_hmg_richards_solver_parameters


solver_parameters = dict(vlumping_hmg_richards_solver_parameters)
solver_parameters["snes_lag_preconditioner"] = 3
