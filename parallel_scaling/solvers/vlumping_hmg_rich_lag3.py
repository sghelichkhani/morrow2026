# VLumping-HMG, Richardson smoothers, setup lagged by three.
#
# Adds the private operator snapshot to `vlumping_hmg_rich`. See
# `vlumping_inexact_rich_lag3.py` for the mechanism and
# NOTES/2026-08-21-SPEEDING-UP-VLUMPING-SUGGESTIONS.md §6 (Fix B) and §7.
#
# The saving is smaller here than for `vlumping_inexact_rich_lag3`, because
# HMG's coarse solve is a geometric multigrid rather than a MUMPS
# factorisation and already costs 2 s at h8. What the lag removes is the
# Galerkin product on both hierarchies.

from .vlumping_hmg_rich import (  # noqa: F401
    VerticallyLumpedHMGPC,
    OMEGA_FINE,
    OMEGA_BASE,
    solver_parameters as _base,
)

LAG = 3

solver_parameters = dict(_base)
solver_parameters["vlumping_lag"] = LAG
