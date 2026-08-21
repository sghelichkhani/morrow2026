# VLumping-HMG with a Richardson fine smoother, damping derived.
#
# Same preset as `vlumping_hmg` with the fine-level Chebyshev smoother
# replaced by damped Richardson at a measured damping factor. See
# `vlumping_inexact_rich.py` for why the factor is measured and not fixed.
#
# HMG pays for roughly two eigenvalue estimations per Newton step, not one:
# the fine level estimates, and every level of the base-hierarchy multigrid
# estimates as well. At h8 that is 251 s of the 318 s setup budget. This
# preset removes the fine-level half. The base hierarchy keeps Chebyshev,
# because the automatic derivation applies to the fine level only.
#
# The fine level is also the safe half. It runs Chebyshev with
# ksp_max_it 1, and a one-iteration Chebyshev is exactly damped Richardson
# with omega = 2/(emin + emax), so the substitution is algebraic.

from gadopt.preconditioners import VerticallyLumpedHMGPC  # noqa: F401
from gadopt.richards_solver import vlumping_hmg_richards_solver_parameters

solver_parameters = dict(vlumping_hmg_richards_solver_parameters)
solver_parameters["vlumping_omega_auto"] = True
