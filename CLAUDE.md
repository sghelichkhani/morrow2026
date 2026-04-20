# morrow2026

Numerical results and documentation for the Morrow et al. 2026 paper on
solving the Richards equation at scale with G-ADOPT. This directory is
the **experimental record** that backs the paper — raw run outputs,
parsed JSON, figures, and the scripts that produced them. The manuscript
prose itself lives elsewhere; this repo is about making the results
reproducible and auditable.

## Layout

- `parallel_scaling/` — the parallel-scaling study for the Richards
  solver. Three benchmarks (Cockett 3D, Murrumbidgee vertical,
  Murrumbidgee horizontal) × ~20 solver presets. See the CLAUDE.md in
  that directory for detail.

## Related trees

| What | Where |
|---|---|
| Paper draft (LaTeX, Copernicus class) | `~/Workplace/papers/richards-morrow-2026/` |
| G-ADOPT source (`richardson` worktree) | `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/` |
| G-ADOPT regression tests for the chosen solver presets | same worktree, `tests/parallel_scaling_richards/` |

The g-adopt public API ships four canonical Richards presets in
`gadopt/richards_solver.py` — `direct`, `iterative`, `vlumping`,
`vlumping_hmg` — with auto-selection by mesh type. The full parameter
sweep (VLumping ablation variants, baselines like `sor` and `bjacobi`,
retired Pmat variants) lives here in `parallel_scaling/`, not in
g-adopt. The scaling-study shims re-export directly from
`gadopt.preconditioners` and `gadopt.richards_solver` so there is one
source of truth for the shipped presets.

## What changes where

- Changes to the **Richards solver itself** (new preconditioner classes,
  soil curves, time stepping): g-adopt worktree.
- Changes to **scaling drivers, solver presets, submission scripts,
  parsing, plotting**: here, in `parallel_scaling/`.
- Changes to the **manuscript** (text, figures cited in the paper,
  bibliography): the paper tree at
  `~/Workplace/papers/richards-morrow-2026/`. Figures in the paper
  should be produced by scripts here and copied over, not re-drawn.

## HPC context

Scaling runs executed on Gadi (`normalsr` queue, Sapphire Rapids, 104
CPUs / 500 GB per node, project `xd2`). Runs are considered frozen —
re-running on Gadi is only needed if a solver preset changes or we
discover a regression. Parsed JSON in `parallel_scaling/parsed/` is the
authoritative record; figures can be regenerated from it without touching
Gadi.

See `parallel_scaling/SOLVER-STUDY.md` for the detailed solver-by-solver
write-up, bug post-mortems, and the comparison against the paper's
reported numbers.
