"""Solver parameter presets for Richards equation scaling tests.

Each module exports a `solver_parameters` dictionary suitable for passing to
RichardsSolver. Modules may also export a `solver_kwargs` dictionary with
additional constructor arguments. Import by name, or use `get_solver` to load
from a string.

Every module carries a `STATUS:` line in its header:

  reported   the paper computes a number from runs of this preset
  ablation   run to answer a narrower question; not a recommended default
  retired    superseded; kept so the record stays readable

Reported presets. These three are shims: the parameters are imported from
g-adopt rather than restated here, so the library is the single source of
truth and the paper's listings can be checked against it by inspection. All
three use the fine-level Richardson smoother with a damping factor measured
at run time (`vlumping_omega_auto`), and none lags the operator.

    bjacobi              Block-Jacobi with ILU(0). The baseline that wins in
                         the short-step regime.
    gmg                  Geometric multigrid, horizontal coarsening only,
                         MUMPS coarse solve.
    sor, gamg, boomeramg Baselines culled by the basin anisotropy; reported
                         in the outcome table.
    gamg_asm             GAMG with a DG-aware ASM smoother.
    vlumping             g-adopt's shipped `vlumping`. Two-level MG whose
                         coarse space is the vertically constant space.
    vlumping_linesmooth  g-adopt's shipped `vlumping_linesmooth`. As above
                         with a column-exact ASM smoother. Differs from
                         `vlumping` in the fine-level smoother alone.
    vlumping_hmg         g-adopt's shipped `vlumping_hmg`. Nested geometric
                         multigrid on the 2-D base hierarchy instead of a
                         monolithic coarse factorisation. Reported only for
                         the extreme strong-scaling decompositions.

Ablations. Smoother sweeps (`vlumping_1sweep`, `vlumping_4sweep`,
`vlumping_richardson`, `vlumping_sor`); the linear-tolerance arm
(`vlumping_rtol6`, `bjacobi_rtol6`, `gmg_rtol6`); the SNES accelerators
(`ngmres_gmg`, `qn_gmg`); and the lagged-snapshot family
(`vlumping_inexact_rich_lag3`, `vlumping_hmg_rich_lag3`,
`vlumping_*_snapshot_lag3`, `vlumping_hmg_rich_lag3_live`,
`vlumping_linesmooth_rich`, `vlumping_linesmooth_lag3`), which measured the
operator snapshot that was removed from g-adopt on 2026-08-29. Those presets
now take their preconditioner from `solvers/lagged_pc.py`.

Superseded names. `vlumping_inexact` is an alias of `vlumping`; its run
directories predate the shipped preset gaining the measured damping and hold
Chebyshev results. `vlumping` itself was the ksp_rtol 1e-6 variant until
2026-08-29 and is now `vlumping_rtol6`.

Retired. The Pmat strategies `gamg_diffpmat`, `gamg_lipnikov` and
`boomeramg_lipnikov` were dropped in April 2026; SOLVER-STUDY.md §7 records
what they did. Their runs are archived off-repository — see
`archive/README.md`.
"""

import importlib

_presets = (
    # PC strategies
    "gmg", "boomeramg", "gamg_asm", "vlumping", "gamg",
    "bjacobi", "sor", "vlumping_rtol6",
    # SNES variants
    "ngmres_gmg", "qn_gmg",
    # VLumping parameter variants
    "vlumping_1sweep", "vlumping_4sweep", "vlumping_richardson",
    "vlumping_sor", "vlumping_inexact",
    "vlumping_linesmooth", "vlumping_hmg",
    # Reviewer follow-up: setup lag and HMG fine-smoother experiment
    "vlumping_inexact_lag3", "vlumping_hmg_lag3",
    "vlumping_hmg_bjacilu", "vlumping_hmg_bjacilu_lag3",
    # Setup-cost campaign: Richardson smoothers and the operator snapshot
    "vlumping_inexact_rich", "vlumping_inexact_rich_lag3",
    "vlumping_hmg_rich", "vlumping_hmg_rich_lag3",
    "vlumping_inexact_snapshot_lag3", "vlumping_hmg_snapshot_lag3",
    # Fair-comparison campaign: tolerance pairs and the incoherent lag
    "bjacobi_rtol6", "gmg_rtol6", "vlumping_hmg_rich_lag3_live",
    # Attribution of the 2026-08-29 linesmooth rebuild: smoother vs setup lag
    "vlumping_linesmooth_rich", "vlumping_linesmooth_lag3",
)


def get_solver(name: str) -> tuple[dict, dict]:
    """Load solver parameters and constructor kwargs from a preset.

    Returns:
        (solver_parameters, solver_kwargs) where solver_kwargs contains
        additional arguments for RichardsSolver (e.g. pmat='diffusion').
        solver_kwargs is empty for presets that don't need constructor args.
    """
    mod = importlib.import_module(f".{name}", package=__name__)
    params = mod.solver_parameters
    kwargs = getattr(mod, 'solver_kwargs', {})
    return params, kwargs


def available() -> tuple:
    """Return the names of all available presets."""
    return _presets
