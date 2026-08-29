# The paper's "VLumping" — g-adopt's shipped `vlumping` preset.
#
# STATUS: reported. This is one of the two presets the paper recommends as a
# default for basin-scale Richards' equation.
#
# Shim only. The parameters are imported from g-adopt rather than restated, so
# there is one source of truth and the paper's listing can be checked against
# the library by inspection. Two-level multigrid on an extruded mesh whose
# coarse space is the vertically constant space, formed by Galerkin projection
# and solved directly with MUMPS; fine-level smoother is a rank-local
# block-Jacobi ILU(0) wrapped in Richardson with a measured damping factor;
# inexact Newton at ksp_rtol 1e-4.
#
# History. Until 2026-08-29 this name belonged to the ksp_rtol 1e-6 arm of the
# tolerance ablation, now `vlumping_rtol6`, and the shipped preset was reached
# here through `vlumping_inexact` and its `_rich` / `_rich_lag3` variants. The
# shipped preset now carries the measured Richardson damping itself and no
# longer offers the operator snapshot, so those variants collapse into this
# one. See solvers/lagged_pc.py for the snapshot and why it was dropped.

from gadopt.preconditioners import VerticallyLumpedPC  # noqa: F401 (pc_python_type)
from gadopt.richards_solver import vlumping_richards_solver_parameters as _shipped

solver_parameters = dict(_shipped)
