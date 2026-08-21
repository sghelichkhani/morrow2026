# VLumping-HMG with the setup lagged by three, smoother unchanged.
#
# The HMG counterpart of `vlumping_inexact_snapshot_lag3`. See that module
# for why this is not the same thing as `vlumping_hmg_lag3`.
#
# The saving here comes from the Galerkin products on both hierarchies and
# from the fine-level ILU. HMG's coarse solve is a geometric multigrid
# rather than a MUMPS factorisation and costs 2 s at h8, so there is less
# to lag on the coarse side than for `vlumping_inexact`.

from gadopt.preconditioners import VerticallyLumpedHMGPC  # noqa: F401
from gadopt.richards_solver import vlumping_hmg_richards_solver_parameters

LAG = 3

solver_parameters = dict(vlumping_hmg_richards_solver_parameters)
solver_parameters["vlumping_lag"] = LAG
