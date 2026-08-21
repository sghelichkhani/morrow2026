# VLumping-HMG with Richardson smoothers on both hierarchies.
#
# Same preset as `vlumping_hmg` (g-adopt's shipped `vlumping_hmg`) with the
# Chebyshev smoothers replaced by damped Richardson, on the fine level and
# on the 2D base hierarchy.
#
# HMG pays for roughly two eigenvalue estimations per Newton step, not one:
# the fine level estimates, and every level of the base-hierarchy multigrid
# estimates as well. At h8 that is 251 s of the 318 s setup budget.
#
# The fine level is the safe half of this change. It runs Chebyshev with
# ksp_max_it 1, and a one-iteration Chebyshev is exactly damped Richardson
# with omega = 2/(emin + emax). With the measured lmax = 1.68 and PETSc's
# default transform, that gives omega = 0.99. The substitution is therefore
# algebraic, not a retuning.
#
# The base-hierarchy levels run Chebyshev with ksp_max_it 2 over
# block-Jacobi ILU, with a measured lmax of 1.04. OMEGA_BASE = 0.95 follows
# the same 1/lmax rule that gives 0.9 for the `vlumping` preset. This is the
# one value in the campaign with no direct measurement behind it.
#
# See NOTES/2026-08-21-SPEEDING-UP-VLUMPING-SUGGESTIONS.md §2, §3 and §6.

from gadopt.preconditioners import VerticallyLumpedHMGPC  # noqa: F401
from gadopt.richards_solver import vlumping_hmg_richards_solver_parameters

OMEGA_FINE = 0.99
OMEGA_BASE = 0.95

solver_parameters = dict(vlumping_hmg_richards_solver_parameters)
solver_parameters.update({
    "lumped_mg_levels_ksp_type": "richardson",
    "lumped_mg_levels_ksp_richardson_scale": OMEGA_FINE,
    "lumped_mg_coarse_mg_levels_ksp_type": "richardson",
    "lumped_mg_coarse_mg_levels_ksp_richardson_scale": OMEGA_BASE,
})
