# STATUS: ablation. The operator snapshot this preset enables was removed
# from g-adopt on 2026-08-29 after it was measured to cost a factor of four
# in the near-saturated seasonal regime. See solvers/lagged_pc.py.
# VLumping-HMG, Richardson smoothers, setup lagged by three.
#
# Adds the private operator snapshot to `vlumping_hmg_rich`. See
# `vlumping_inexact_rich_lag3.py` for the mechanism and
# NOTES/2026-08-21-SPEEDING-UP-VLUMPING-SUGGESTIONS.md §6 (Fix B) and §7.
#
# The saving is smaller here than for `vlumping_inexact_rich_lag3`, because
# HMG's coarse solve is a geometric multigrid rather than a MUMPS
# factorisation and already costs 2 s at h8. What the lag removes is the
# Galerkin product on both hierarchies.

from .vlumping_hmg_rich import (  # noqa: F401
    VerticallyLumpedHMGPC,
    solver_parameters as _base,
)

LAG = 3

solver_parameters = dict(_base)
solver_parameters["vlumping_lag"] = LAG

# The snapshot now lives here rather than in g-adopt, so this preset must
# point at the local class. See solvers/lagged_pc.py.
from .lagged_pc import LaggedVerticallyLumpedHMGPC  # noqa: E402,F401

solver_parameters["pc_python_type"] = "solvers.lagged_pc.LaggedVerticallyLumpedHMGPC"
