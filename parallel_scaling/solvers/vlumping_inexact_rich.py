# Inexact-Newton VLumping with a Richardson fine smoother.
#
# Same preset as `vlumping_inexact` (g-adopt's shipped `vlumping`) with one
# change: the fine-level Chebyshev smoother becomes damped Richardson.
#
# Why: PETSc re-estimates the Chebyshev spectral bounds whenever the
# operator's object state changes. Firedrake reassembles the Jacobian in
# place, so the estimate runs once per Newton step for the whole
# simulation. Each estimate costs ten preconditioned GMRES iterations plus
# ten global reductions. The estimate is constant to three significant
# figures, so the work is pure overhead. A Richardson smoother creates no
# estimator object, so the estimation stops completely.
#
# The damping factor 0.9 comes from the measured spectrum of the
# preconditioned fine-level operator (lmax = 1.11) on the serial isotropic
# Cockett box. It is not yet calibrated at 832 ranks, where the rank-local
# ILU(0) blocks are smaller and lmax can rise. See
# NOTES/2026-08-21-SPEEDING-UP-VLUMPING-SUGGESTIONS.md §6 (Fix A) and §9.

from gadopt.preconditioners import VerticallyLumpedPC  # noqa: F401
from gadopt.richards_solver import vlumping_richards_solver_parameters

OMEGA = 0.9

solver_parameters = dict(vlumping_richards_solver_parameters)
solver_parameters.update({
    "lumped_mg_levels_ksp_type": "richardson",
    "lumped_mg_levels_ksp_richardson_scale": OMEGA,
})
