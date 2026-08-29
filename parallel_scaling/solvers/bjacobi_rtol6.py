# STATUS: ablation. Not a recommended default; run to answer one narrow question.
# Tolerance ablation for the 2026-08 fair-comparison campaign.
#
# Identical to `bjacobi` except for `ksp_rtol`. The campaign matches every
# compared solver at the inexact-Newton tolerance of 1e-4; this preset is the
# 1e-6 counterpart on the same mesh, so the effect of the tolerance can be
# separated from the effect of the preconditioner. Together with `vlumping`
# against `vlumping_inexact`, it gives the pair for three solver families.
#
# The direction matters for the paper: on the frozen h8 record, loosening
# the tolerance made VLumping faster (24.70 s per step against 30.69), so
# matching at 1e-4 favours the baselines rather than the contribution.

from .bjacobi import solver_parameters as _base

solver_parameters = dict(_base)
solver_parameters["ksp_rtol"] = 1e-6
