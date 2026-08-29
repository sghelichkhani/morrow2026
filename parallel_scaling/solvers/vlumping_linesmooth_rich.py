# STATUS: ablation, now equivalent to the shipped `vlumping_linesmooth`.
# This module isolated the Richardson smoother from the operator snapshot on
# 2026-08-29. The snapshot lost that comparison and was dropped from the
# preset, so this variant and `vlumping_linesmooth` now resolve to the same
# parameters. It is kept because results/ carries runs under this name.
# Ablation: line smoother + auto-damped Richardson, WITHOUT the lag.
#
# One half of the 2026-08-29 attribution. Rebuilding `vlumping_linesmooth` as
# Richardson + lag-3 changed two things at once, and the result split by
# regime: in the ordinary regime it saved 14-30% of wall time at an unchanged
# iteration count, while in the saturated seasonal regime the failed-step
# count rose from 4 to 108 at h4. This variant carries the smoother change
# alone, so the two effects can be separated.

from .vlumping_linesmooth import solver_parameters as _base

solver_parameters = dict(_base)
solver_parameters.pop("vlumping_lag", None)
