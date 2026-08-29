# STATUS: ablation. The operator snapshot this preset enables was removed
# from g-adopt on 2026-08-29 after it was measured to cost a factor of four
# in the near-saturated seasonal regime. See solvers/lagged_pc.py.
# VLumping-HMG, derived Richardson damping, lag three, live fine smoother.
#
# Identical to `vlumping_hmg_rich_lag3` except that the fine smoother keeps
# the live Jacobian instead of reading the snapshot
# (`vlumping_lag_smoother false`).
#
# This is the incoherent lag. On the local dt-ramped Cockett box it was
# measurably faster than the coherent one, 17% against 9.5%, with no penalty
# in linear iterations, because the multigrid cycle then approximates the
# inverse of the operator the outer Krylov method is actually solving. It is
# not the default because the smoother evaluates B_old^-1 A_live, which has
# no guarantee of contraction once a front moves the spectrum, and because
# an earlier experiment with the same combination degraded badly.
#
# One job at h8 settles whether the gap survives on the basin.

from .vlumping_hmg_rich_lag3 import (  # noqa: F401
    VerticallyLumpedHMGPC,
    solver_parameters as _base,
)

solver_parameters = dict(_base)
solver_parameters["vlumping_lag_smoother"] = False

# The snapshot now lives here rather than in g-adopt, so this preset must
# point at the local class. See solvers/lagged_pc.py.
from .lagged_pc import LaggedVerticallyLumpedHMGPC  # noqa: E402,F401

solver_parameters["pc_python_type"] = "solvers.lagged_pc.LaggedVerticallyLumpedHMGPC"
