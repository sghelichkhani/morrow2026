# STATUS: ablation. Not a recommended default; run to answer one narrow question.
# Ablation: line smoother + lag-3 snapshot, keeping the Chebyshev smoother.
#
# The other half of the 2026-08-29 attribution. See
# `vlumping_linesmooth_rich.py`. This variant carries the setup lag alone, so
# if the failed-step growth in the saturated regime follows it rather than the
# Richardson smoother, the operator snapshot is the fragile part and the lag
# is what must be shortened or made adaptive.

from .vlumping_linesmooth import solver_parameters as _base

solver_parameters = dict(_base)
solver_parameters.pop("vlumping_omega_auto", None)
