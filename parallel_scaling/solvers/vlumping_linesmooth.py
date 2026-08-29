# STATUS: reported. The paper computes numbers from runs of this preset.
# VLumping variant: vertical-line smoother at the fine level.
#
# Configured as `vlumping_inexact_rich_lag3` — g-adopt's shipped `vlumping`
# preset plus the auto-damped Richardson smoother (`vlumping_omega_auto`) —
# but WITHOUT the lag-3 operator snapshot, and with one further change: the
# fine-level preconditioner becomes a
# Firedrake ASMLinesmoothPC patch solver, one patch per vertical column, each
# factorised by LU, in place of the rank-local block-Jacobi ILU(0). Exact
# column solves eat the anisotropic vertical coupling in one sweep. The coarse
# solve (2D R-space projection, MUMPS LU) is untouched.
#
# Rebuilt 2026-08-29. The earlier version kept the Chebyshev smoother and
# rebuilt the preconditioner on every Newton step, while the other reported
# lumped preset carried Richardson + lag-3, so the two differed in more than
# the smoother the paper says distinguishes them. Aligning them fully was
# tried and rejected on evidence: see the table below. They now differ in the
# fine-level smoother and in the setup lag, for a measured reason.
#
# Why the lag is dropped, measured 2026-08-29 in the saturated seasonal
# regime at h2 and h4, one knob at a time:
#
#   configuration            h2 it/fail/(h/yr)      h4 it/fail/(h/yr)
#   Chebyshev, no lag         6.6 /  4 / 0.43        8.5 /  4 / 0.44
#   Richardson, no lag        6.4 /  6 / 0.40        8.2 /  3 / 0.33
#   Chebyshev + lag 3        10.2 / 44 / 1.01       13.1 / 89 / 1.66
#   Richardson + lag 3       10.1 / 55 / 1.00       12.4 /108 / 1.85
#
# The lag carries the whole effect and the smoother carries none of it. With
# the lag the adaptive ramp thrashes: 89 to 108 failed steps against 3 to 6.
# The reason is specific to this preset. The snapshot lags the smoother setup
# as well as the coarse operator, so the column LU factorisations go stale,
# and solving a stale column operator *exactly* is worse than solving it
# approximately, which is why the same lag is harmless for the point-smoother
# preset (`vlumping_inexact_rich_lag3` reaches 3 to 9 failed steps in the same
# runs). The saturated regime is where columns cross into saturation between
# Newton steps, so it is where the snapshot ages fastest.
#
# This matters more than the setup saving it costs, because the regime where
# the lag hurts is the regime where the lumped presets are the only viable
# option at all: block-Jacobi completes no timestep there.
#
# Richardson is kept. It is a pure gain here, beating the original Chebyshev
# configuration on wall time at both scales, and it removes the per-Newton
# Chebyshev eigenvalue estimation without introducing any staleness.
#
# One parameter is deliberately NOT inherited: `lumped_mg_levels_ksp_max_it`
# stays at 1 rather than the base preset's 2. The sweep count is a property of
# the smoother, not of the setup strategy — an exact per-column solve does in
# one sweep what the point smoother needs two for, and the previous linesmooth
# runs used 1. Holding it at 1 keeps this rerun a one-variable change against
# those runs, so any difference is attributable to Richardson + lag-3.
#
# See NOTES/2026-08-21-RICHARDSON-LAG-GADI-CAMPAIGN.md for the damping
# measurement and the snapshot lag, and NOTES/archive/linesmooth-pre-lag3-20260829/
# for the superseded outputs.

from gadopt.preconditioners import VerticallyLumpedPC  # noqa: F401 (pc_python_type)
from gadopt.richards_solver import (
    vlumping_linesmooth_richards_solver_parameters as _shipped,
)

# Shim. The parameters are g-adopt's shipped `vlumping_linesmooth` preset,
# imported rather than restated so there is one source of truth and the
# paper's listing can be checked against the library by inspection.
solver_parameters = dict(_shipped)
