"""Solver parameter presets for Richards equation scaling tests.

Each module exports a `solver_parameters` dictionary suitable for passing
to RichardsSolver.  Modules may also export a `solver_kwargs` dictionary
with additional constructor arguments (e.g. pmat='diffusion').

Import by name or use `get_solver` to load from a string (e.g. a
command-line argument).

Available presets:

  Preconditioner strategies (Amat = Pmat):
    gmg        — Geometric multigrid (horizontal coarsening, MUMPS coarse)
    boomeramg  — Hypre BoomerAMG (paper's anisotropy-aware tuning, see module)
    gamg_asm   — GAMG with DG-aware ASM smoother (aggregate-based)
    vlumping   — Vertically lumped 2-level MG (extreme aspect ratio)
    gamg       — PETSc GAMG with corrected options (general-purpose)
    bjacobi    — Block-Jacobi with ILU(0) (baseline)
    sor        — SOR (baseline, poor scaling)

  SNES variants (nonlinear solver + preconditioner):
    ngmres_gmg — NGMRES (Anderson acceleration) + GMG
    qn_gmg     — Quasi-Newton (L-BFGS) + GMG

  VLumping parameter variants:
    vlumping_1sweep     — 1 smoother sweep (vs default 2)
    vlumping_4sweep     — 4 smoother sweeps
    vlumping_richardson — Richardson(0.5) smoother (no eigenvalue estimation)
    vlumping_sor        — SOR smoother (Thwaites default)
    vlumping_inexact    — Inexact Newton (ksp_rtol=1e-4) — shipped as g-adopt's `vlumping`
    vlumping_linesmooth — Vertical-line ASM smoother, LU coarse
    vlumping_hmg        — Line smoother + geometric MG on 2D base hierarchy — shipped as g-adopt's `vlumping_hmg`

The Pmat strategies `gamg_diffpmat`, `gamg_lipnikov`, and
`boomeramg_lipnikov` were retired in April 2026. See SOLVER-STUDY.md §7
for the archived description of what they did and why they were dropped.
"""

import importlib

_presets = (
    # PC strategies
    "gmg", "boomeramg", "gamg_asm", "vlumping", "gamg",
    "bjacobi", "sor",
    # SNES variants
    "ngmres_gmg", "qn_gmg",
    # VLumping parameter variants
    "vlumping_1sweep", "vlumping_4sweep", "vlumping_richardson",
    "vlumping_sor", "vlumping_inexact",
    "vlumping_linesmooth", "vlumping_hmg",
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
