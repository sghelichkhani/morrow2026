# Inexact-Newton VLumping with a Richardson fine smoother, damping derived.
#
# Same preset as `vlumping_inexact` (g-adopt's shipped `vlumping`) with one
# change: the fine-level Chebyshev smoother becomes damped Richardson, and
# the damping factor is measured rather than guessed.
#
# Why replace the smoother: PETSc re-estimates the Chebyshev spectral bounds
# whenever the operator's object state changes. Firedrake reassembles the
# Jacobian in place, so the estimate runs once per Newton step for the whole
# simulation, at ten preconditioned GMRES iterations and ten global
# reductions each. A Richardson smoother creates no estimator object.
#
# Why derive the factor: it is not a constant. On the same problem it falls
# from 1.407 on one rank to 0.989 on four, because it depends on the
# rank-local ILU(0) blocks, and it falls by a further third as the adaptive
# time step ramps from 60 s to 43200 s and the spectrum spreads. An earlier
# version of this preset carried a hard-coded 0.9, measured on a serial
# isotropic box at a fixed dt of 300 s. That value transfers to neither
# axis. `vlumping_omega_auto` measures it at startup and again whenever the
# operator balance or the iteration count moves.
#
# See NOTES/2026-08-21-RICHARDSON-LAG-GADI-CAMPAIGN.md.

from gadopt.preconditioners import VerticallyLumpedPC  # noqa: F401
from gadopt.richards_solver import vlumping_richards_solver_parameters

solver_parameters = dict(vlumping_richards_solver_parameters)
solver_parameters["vlumping_omega_auto"] = True
