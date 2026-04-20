# Inexact-Newton VLumping — scaling-study shim.
#
# Identical to g-adopt's shipped `vlumping` preset (from
# gadopt.richards_solver.vlumping_richards_solver_parameters). Kept in this
# directory so that submit_jobs.py / scaling drivers can address it by the
# historical name `vlumping_inexact`; the parameters are imported directly
# so there is a single source of truth.
#
# Difference vs the plain `vlumping` preset in this directory: inexact
# Newton (ksp_rtol=1e-4) instead of 1e-6. Round 3 / 4 found this variant
# dominant on Murrumbidgee scaling.

from gadopt.preconditioners import VerticallyLumpedPC  # noqa: F401
from gadopt.richards_solver import vlumping_richards_solver_parameters

solver_parameters = dict(vlumping_richards_solver_parameters)
