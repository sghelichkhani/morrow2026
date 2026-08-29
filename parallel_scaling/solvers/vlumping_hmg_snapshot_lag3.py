# STATUS: ablation. The operator snapshot this preset enables was removed
# from g-adopt on 2026-08-29 after it was measured to cost a factor of four
# in the near-saturated seasonal regime. See solvers/lagged_pc.py.
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

# The snapshot now lives here rather than in g-adopt, so this preset must
# point at the local class. See solvers/lagged_pc.py.
from .lagged_pc import LaggedVerticallyLumpedHMGPC  # noqa: E402,F401

solver_parameters["pc_python_type"] = "solvers.lagged_pc.LaggedVerticallyLumpedHMGPC"
