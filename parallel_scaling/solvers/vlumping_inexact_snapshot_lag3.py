# STATUS: ablation. The operator snapshot this preset enables was removed
# from g-adopt on 2026-08-29 after it was measured to cost a factor of four
# in the near-saturated seasonal regime. See solvers/lagged_pc.py.
# Inexact-Newton VLumping with the setup lagged by three, smoother unchanged.
#
# This preset changes one thing against `vlumping_inexact`: the inner
# multigrid runs against a private snapshot of the Jacobian that refreshes
# every three Newton steps. The Chebyshev smoother stays.
#
# Do not confuse this with `vlumping_inexact_lag3`, which sets
# `snes_lag_preconditioner` and is a null result. SNES sets the reuse flag
# on the outer Python PC, whose `PCSetUp` then returns early before the log
# event. The first `PCApply` calls `PCSetUp` again, and the inner PCMG,
# which never received the flag and still holds the live Jacobian, runs the
# complete setup there. The work moves from `PCSetUp` into `KSPSolve`
# instead of disappearing. See
# NOTES/2026-08-21-SPEEDING-UP-VLUMPING-SUGGESTIONS.md §4.
#
# `vlumping_lag` reaches the inner PC directly, so the saving is real. On
# the local Cockett box with a Murrumbidgee-style dt ramp it cuts the wall
# time by 17% for a 0.3% penalty in linear iterations. The Richardson
# presets in this directory win on a fixed small dt and lose once the dt
# ramp spreads the spectrum, so this preset is the conservative candidate:
# it keeps the smoother that the frozen results used and changes only the
# setup frequency.

from gadopt.preconditioners import VerticallyLumpedPC  # noqa: F401
from gadopt.richards_solver import vlumping_richards_solver_parameters

LAG = 3

solver_parameters = dict(vlumping_richards_solver_parameters)
solver_parameters["vlumping_lag"] = LAG

# The snapshot now lives here rather than in g-adopt, so this preset must
# point at the local class. See solvers/lagged_pc.py.
from .lagged_pc import LaggedVerticallyLumpedPC  # noqa: E402,F401

solver_parameters["pc_python_type"] = "solvers.lagged_pc.LaggedVerticallyLumpedPC"
