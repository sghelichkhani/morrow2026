# Verification-tree restoration

Date: 2026-05-13

## Background

Origin had moved 13 commits ahead of my local `main` since 2026-04-22.
All thirteen commits were by Liam Morrow, several titled
`"Add files via upload"` — the message GitHub stamps on web-UI
drag-and-drop uploads. On inspection, the upload commits had wholesale
replaced verification scripts and data files with older local copies of
Liam's, undoing the cleanup work I had done on `360e5bb` (Tracy),
`9c9b13b` (mass conservation) and `d4f8398` (Vauclin).

The damage was concentrated in three places:

1. **`verification/tracy/tracy_3d.py`** — the gwassess-based analytical
   reference was replaced with the old inline series solution; the
   explicit `solver_parameters` was dropped in favour of `bjacobi`;
   `h_old.assign(h)` was reintroduced inside the time loop; `t_final`
   was bumped from `5e5` back to `5e6`. The companion driver
   `tracy_2d.py` was re-created locally even though the canonical
   driver had already been moved to
   `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/tests/richards/tracy_2d.py`
   and is imported from there by `run_spatial_2d.py`.
2. **`verification/mass_conservation/mass_balance.py`** — gained an
   unused `equation_type` argument and an explicit
   `solver_parameters='direct'` (redundant on a `UnitSquareMesh` where
   auto-select already gives `direct`). More seriously, the upload
   replaced `equation_type.json` (originally DQ2 grid 25 with the full
   BackwardEuler + ImplicitMidpoint × value+deriv matrix) with a DQ1
   grid 36 BackwardEuler-only file, and `function_space.json`'s
   DQ1/DQ2 entries lost their `1e-12` mass-error floor and flatlined at
   `~7e-11`. Both changes weakened the §3.2 figure narrative.
3. **`verification/vauclin/run_convergence.py`** — the laptop-friendly
   sweep (reference 61×41 DQ2, eight coarse levels DQ0+DQ1 over
   nodes 16–46) was replaced with the paper-spec sweep (reference
   151×121 DQ2, eighteen coarse levels up to 151×101). The data file
   on disk, `convergence.json`, was untouched and still corresponds to
   the laptop spec — so anyone running the new script would have
   silently overwritten it with hours of work targeting a different
   resolution.

A 173-line JSON titled `convergence.json` was also dropped into
`verification/tracy/results/` by one of the uploads. Its schema
(`nodes_x`, `nodes_y`) matched the Vauclin convergence file, not any
Tracy driver — it was a misplaced upload, not a Tracy data product.

## What was restored

All restorations were done with `git checkout <sha> -- <path>` against
the relevant baseline commit, so history is preserved.

| Area | Restored from | Notes |
|---|---|---|
| `verification/tracy/tracy_3d.py` | `360e5bb`, then patched for steady-state stopper (see below) | gwassess + iterative preset + maxchange exit |
| `verification/tracy/run_spatial_2d.py` | `360e5bb` | now imports `from tests.richards.tracy_2d import model` again |
| `verification/tracy/run_spatial_3d.py` | `360e5bb` | DG1 sweep 21→101, defers to `tracy_3d.model` for defaults |
| `verification/tracy/plot_spatial.py` | `360e5bb` | two-panel 2D figure (specified-head + no-flux) restored |
| `verification/tracy/plot_solution.py` | `360e5bb` | drops the global rcParams override |
| `verification/tracy/results/spatial_2d.json` | `360e5bb` | DG1 specified-head + no-flux only; uses `dx = L/n` |
| `verification/tracy/results/spatial_3d.json` | `360e5bb` | DG1 only, 21→51 |
| `verification/tracy/tracy_2d.py` | deleted | single source of truth lives in the g-adopt richardson worktree |
| `verification/tracy/results/convergence.json` | deleted | misfiled Vauclin-shaped data |
| `verification/mass_conservation/mass_balance.py` | `9c9b13b` | no spurious `equation_type` arg, no redundant explicit preset |
| `verification/mass_conservation/run_equation_type.py` | `9c9b13b` | DQ2 grid 25 + full BE/IM × value/deriv matrix |
| `verification/mass_conservation/plot_mass.py` | `9c9b13b` | restores cumulative-mass-loss unit label and serif rcParams |
| `verification/mass_conservation/results/equation_type.json` | `9c9b13b` | full four-line story |
| `verification/mass_conservation/results/function_space.json` | `9c9b13b` | DQ1/DQ2 floor back at `~1e-12` |
| `verification/vauclin/run_convergence.py` | `d4f8398` | laptop-friendly sweep; matches the on-disk data |

The Vauclin data and figures themselves did not need restoring — only
the driver script had diverged from the data it produced.

## What was kept from Liam's commits

Nothing scientific made it through this restoration. The upload
commits were either reverts of my earlier cleanup or downgrades of
existing data, with no net new measurements that were reproducible
against the canonical drivers. The DG0/DG2 Tracy spatial entries that
Liam contributed used `dx = L/(n+1)` (2D) or a non-matching formula
(3D) and ran with `solver_parameters='bjacobi'`, so they cannot be
plotted on the same axes as data from the restored drivers. Marked as
a Gadi to-do.

## New: steady-state stopper in `tracy_3d.py`

Following the pattern in `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/demos/mantle_convection/base_case/base_case.py:371-381`,
the Tracy 3D driver now exits the time loop when
`||h_new - h_old||_L²` drops below `steady_state_tolerance`
(default `1e-3`, expose via `--steady-state-tolerance`). `t_final` is
kept as the upper-cap safety net (default `5e6` s). The dt ramp is
unchanged: `dt ← min(dt × 1.05, t_final / 10)` per step.

Side-effects:

- `solver_parameters='iterative'` is now pinned explicitly, since
  auto-select on a 3D extruded Cartesian mesh would pick `vlumping`
  and that's heavier machinery than this convergence test needs.
  `_validate_preset` in `gadopt/richards_solver.py:463` confirms
  `iterative` is legal on either mesh type (the only check is for
  PETSc-Hypre availability).
- `h_old` is allocated once and tracked in the driver. The richards
  solver internally manages whatever state it needs for the
  conservative time discretisation — `h_old` here is only used to
  compute the steady-state metric.
- The progress log now prints `||h - h_old||_L²` so you can watch the
  decay during a run.

## Outstanding work (Gadi)

Two items added to `to-do-list.md`:

- Tracy 2D spatial: DG0 + DG2 sweeps still needed; the prior `L/(n+1)`
  numbers are dropped and have to be re-run with the canonical driver
  before they can sit on the same convergence plot as the DG1 data.
- Tracy 3D spatial: DG2 sweep + DG1 extension to 71³ / 101³ still
  Gadi-bound. With the steady-state stopper the wall-clock target is
  whatever it takes to reach `1e-3` on the maxchange metric, not the
  hard-coded `5e6` s the old driver was running to.

## Commits

```
024db14 Restore verification drivers and data; add steady-state stopper to tracy_3d
```

Pushed to `origin/main`.
