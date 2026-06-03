# verification — drivers for Morrow et al. 2026 verification figures

This tree produces every figure in §3.1–§3.3 of the paper. Each
sub-directory corresponds to one paper section and contains:

- `drivers/`-style Python scripts that wrap (and extend) the canonical
  Richards tests living in `g-adopt/tests/richards/` and
  `g-adopt/demos/groundwater/`;
- a `run_*.py` orchestrator that sweeps parameters and writes JSON into
  `results/`;
- a `plot_*.py` script that reads the JSON and emits the paper figures
  into `../figures/<Section>/` (the same layout the manuscript
  `\includegraphics` commands expect).

The hardware-heavy §3.4 (Cockett scaling) and §4 (Murrumbidgee scaling)
experiments live in `parallel_scaling/` instead because they require
Gadi. This directory holds what can be run on a laptop or workstation.

## Paper → section map

| Paper | Directory | Figures produced |
|---|---|---|
| §3.1 Tracy | `tracy/` | `solution.pdf`, `2d_spatial_error.pdf`, `3d_spatial_convergence.pdf`, `2d_temporal_congergence.pdf` |
| §3.2 Mass conservation | `mass_conservation/` | `mass_conservation.pdf` |
| §3.3 Vauclin | `vauclin/` | `solution.pdf`, `convergence_rate.pdf` |

## Environment

All drivers expect the `richardson` g-adopt worktree and `gwassess` on
`PYTHONPATH`. `common.py` at the top of this directory exports a small
helper that sets these paths so each driver starts with `from verification.common import *`
(or equivalently `source verification/env.sh`). The reference paths are:

- g-adopt worktree: `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/`
- gwassess: `~/Workplace/gwassess/`
- Firedrake venv: `~/Workplace/firedrake-2026-03-03/venv-firedrake/`

Run `source verification/env.sh` once per shell.

## Narrative

§3 rests on Tracy for spatial and temporal convergence, on the
unit-square infiltration test for mass conservation, and on Vauclin
1979 for a saturated/unsaturated benchmark against published
experimental + numerical data. The three sub-trees map onto that
1:1.
