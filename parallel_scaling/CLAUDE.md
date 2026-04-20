# parallel_scaling

Parallel-scaling study for the Richards equation solver in G-ADOPT,
covering three benchmarks and ~20 preconditioner presets. Produces the
scaling figures for Morrow et al. 2026.

For the full narrative — mathematical framing of each solver, bug
post-mortems, comparison with the paper's reported numbers, and headline
performance tables — see **`SOLVER-STUDY.md`**. This file is just a map.

## Benchmarks

| Driver | Geometry | Purpose |
|---|---|---|
| `cockett_3d.py` | 2 m cubic box, hex-extruded, van Genuchten heterogeneous soil | Isotropic stress test (cell AR ≈ 1:1) |
| `murrumbidgee_3d.py` | Lower Murrumbidgee basin, terrain-following extrusion, Haverkamp soil | Anisotropic scaling — used for both vertical and horizontal weak-scaling experiments |

Murrumbidgee has two scaling modes selected at submission time:
- **Vertical**: fixed Δx = 1775 m, layers grow with nodes (150 → 1200).
  AR climbs from 500:1 to 4000:1.
- **Horizontal** (paper Fig. 14): fixed 300 layers, Δx shrinks with
  nodes (1775 → 620 m).

Tracy 3D lives in g-adopt (mesh is nearly identical to Cockett, kept
there as a verification benchmark rather than a scaling case).

## Solver presets

Every preset is a module under `solvers/` exposing
`solver_parameters` and optionally `solver_kwargs`. `solvers/__init__.py`
routes `get_solver(name)` to the right module.

Two axes after the April 2026 cleanup (see SOLVER-STUDY.md §3):
1. **Preconditioner**: `bjacobi`, `sor`, `gamg`, `gamg_asm`, `boomeramg`,
   `gmg`, and the `vlumping*` family.
2. **SNES variants** (nonlinear acceleration): `ngmres_gmg`, `qn_gmg`.

The custom-Pmat family (`gamg_diffpmat`, `gamg_lipnikov`,
`boomeramg_lipnikov`) was retired in April 2026 — see SOLVER-STUDY.md §7
for the archived description.

The **VLumping family** (`vlumping`, `vlumping_1sweep`,
`vlumping_4sweep`, `vlumping_richardson`, `vlumping_sor`,
`vlumping_inexact`, `vlumping_linesmooth`, `vlumping_hmg`) is the
algorithmic contribution of the paper — a two-level geometric MG that
eliminates the vertical dimension on the coarse side by construction.
The PC classes `VerticallyLumpedPC` and `VerticallyLumpedHMGPC` now live
in `gadopt/preconditioners.py`; the local `solvers/vlumping.py` and
`solvers/vlumping_hmg.py` are thin shims that re-export them and carry
the preset dicts. The other VLumping `.py` files are options-dict
variants used only for the paper's ablation.

## Scripts

| Script | Role |
|---|---|
| `submit_jobs.py` | Generate + submit PBS jobs on Gadi. Organised by *phase* (`round3`, `round3_murr`, `round3_murr_horiz`) and writes `results/<case>/<solver>/<scale>.{pbs,out,err}`. |
| `parse_results.py` | Walk `results/` and emit one JSON per experiment in `parsed/` (`cockett.json`, `murr_vertical.json`, `murr_horizontal.json`). Captures per-step wall/NL/linear-iter counts, Newton-step detail, outcome (`success`/`diverged`/`oom`/`incomplete`), PBS footer. |
| `plot_results.py` | Read parsed JSON, produce 2×3-panel PDF/PNG figures in `figures/`. Solver styles live in `SOLVER_STYLE` at the top. |
| `scaling.py` | Legacy case definitions for Cockett (weak-scaling cell counts). Mostly superseded by `submit_jobs.py`. |

## Data directories

- `results/<case>/<solver>/<scale>.out` — raw stdout from each Gadi run.
  Machine-readable via the regexes in `parse_results.py`.
- `parsed/*.json` — structured records. Treat as the authoritative
  frozen output; regenerate only if the parser changes.
- `figures/*.{pdf,png}` — produced entirely from `parsed/`.

## Workflow

```bash
# On Gadi: submit a phase
python3 submit_jobs.py --phase round3_murr_horiz

# After jobs finish (locally or on Gadi), rebuild the JSON
python3 parse_results.py

# Regenerate figures
python3 plot_results.py --parsedir parsed --outdir figures
```

Parsing and plotting are local-only — no Gadi or Firedrake dependency,
just stdlib + matplotlib + numpy.

## Adding a new preset

See SOLVER-STUDY.md Appendix A. In short: drop a module in `solvers/`,
register in `solvers/__init__.py`, add to the phase lists in
`submit_jobs.py`, add a style entry in `plot_results.py:SOLVER_STYLE`,
and (if it needs a mesh hierarchy) declare it in `GMG3_SOLVERS` or
`HMG1_SOLVERS`.

## Relationship to g-adopt

This directory mirrored `tests/parallel_scaling_richards/` in the g-adopt
`richardson` worktree during development. Going forward the two diverge:
**this** directory retains the full parameter sweep as the paper's
experimental record; **g-adopt** ships four canonical presets as part of
its public API, defined in `gadopt/richards_solver.py`:

- `direct` — MUMPS LU (default in 2-D)
- `iterative` — Newton + GMRES + BoomerAMG (default in 3-D non-extruded)
- `vlumping` — 2-level VLumping MG with inexact Newton (default in 3-D extruded Cartesian)
- `vlumping_hmg` — VLumping with geometric MG on the 2D base hierarchy

The PC classes `VerticallyLumpedPC` and `VerticallyLumpedHMGPC` live in
`gadopt/preconditioners.py`. `RichardsSolver` auto-selects a preset from
the mesh type and raises a clear error if a preset's structural
prerequisites aren't met (e.g. `vlumping_hmg` without a base
`MeshHierarchy`).

The scaling-study shims (`solvers/vlumping.py`,
`solvers/vlumping_inexact.py`, `solvers/vlumping_hmg.py`) re-export
directly from g-adopt so there's one source of truth. The other local
preset modules carry the paper's ablation-only configurations.

`solvers/boomeramg.py` is **not** a shim — it keeps the paper's tuned
BoomerAMG parameters (`strong_threshold=0.5`, `agg_nl=2`, `truncfactor`,
`P_max`), which differ from g-adopt's shipped `iterative` preset
(`strong_threshold=0.7`, more conservative defaults). See the header
comment in that file. Any divergence is intentional: the paper's
Cockett figures were produced with the local tuning and should remain
reproducible.
