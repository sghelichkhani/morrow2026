"""VLumping-HMG with BJacobi-ILU(0) smoothing and setup lag three."""

from .vlumping_hmg_bjacilu import solver_parameters as _bjacilu_parameters


solver_parameters = dict(_bjacilu_parameters)
solver_parameters["snes_lag_preconditioner"] = 3
