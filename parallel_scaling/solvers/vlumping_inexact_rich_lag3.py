# STATUS: ablation. The operator snapshot this preset enables was removed
# from g-adopt on 2026-08-29 after it was measured to cost a factor of four
# in the near-saturated seasonal regime. See solvers/lagged_pc.py.
# Inexact-Newton VLumping, Richardson fine smoother, setup lagged by three.
#
# Adds the private operator snapshot to `vlumping_inexact_rich`. The inner
# PCMG runs against its own copy of the Jacobian, refreshed every three
# Newton steps, so PETSc skips the Galerkin product and the coarse MUMPS
# factorisation in between. The outer FGMRES keeps the true Jacobian for
# its residual, so the Newton step keeps full accuracy.
#
# The snapshot is what makes the lag safe. A lag that leaves the live
# Jacobian visible to the smoother diverges during a wetting front. See
# NOTES/2026-08-21-SPEEDING-UP-VLUMPING-SUGGESTIONS.md §6 (Fix B) and §7.
#
# `vlumping_lag` is read by gadopt.preconditioners.VerticallyLumpedPC. It
# needs the g-adopt branch sghelichkhani/richards-core-04-vlumping at
# commit "Lag the vertically lumped setup against a private operator
# snapshot" or later.

from .vlumping_inexact_rich import (  # noqa: F401
    VerticallyLumpedPC,
    solver_parameters as _base,
)

LAG = 3

solver_parameters = dict(_base)
solver_parameters["vlumping_lag"] = LAG

# The snapshot now lives here rather than in g-adopt, so this preset must
# point at the local class. See solvers/lagged_pc.py.
from .lagged_pc import LaggedVerticallyLumpedPC  # noqa: E402,F401

solver_parameters["pc_python_type"] = "solvers.lagged_pc.LaggedVerticallyLumpedPC"
