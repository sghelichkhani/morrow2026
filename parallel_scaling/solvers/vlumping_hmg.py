# STATUS: reported. The paper computes numbers from runs of this preset.
# VLumping + geometric MG on the 2D base — scaling-study shim.
#
# Identical to g-adopt's shipped `vlumping_hmg` preset (from
# gadopt.richards_solver.vlumping_hmg_richards_solver_parameters). The
# VerticallyLumpedHMGPC class now lives in gadopt/preconditioners.py.
#
# See SOLVER-STUDY.md §6.5 for the algorithmic description, and §11.5
# for the parallel-correctness bug in the coarse-to-R permutation matrix
# that was fixed during development.

from gadopt.preconditioners import VerticallyLumpedHMGPC  # noqa: F401
from gadopt.richards_solver import vlumping_hmg_richards_solver_parameters

solver_parameters = dict(vlumping_hmg_richards_solver_parameters)
