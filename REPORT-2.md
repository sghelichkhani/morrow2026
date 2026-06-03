# Figure-regeneration round (items 1–5 of the reproducibility plan)

Date: 2026-05-14

## What got done

Tasks 1 through 5 of the prioritised plan from yesterday's session, in
the order listed. Everything below is laptop work; the figures all
have a generating script in this repo and ingest only from data files
that also live here.

### 1. Folded in Irksome PR #226 — `equation_type.pdf` + `2d_temporal_congergence.pdf`

The `sghelichkhani/conservative-update-non-sa` branch was already the
active Irksome install in the Firedrake venv, so the work here was
just re-running the two sweeps that the PR fixes:

- `verification/mass_conservation/run_equation_type.py` — 20-entry
  sweep at DQ2 grid 25 over `(BackwardEuler, ImplicitMidpoint) x
  (value, deriv) x dt in {400, 200, 100, 50, 25}`. The headline holds:
  BackwardEuler + mixed form (`value`) sits at the `~1e-10` machine-zero
  floor across every dt. The head-based form (`deriv`) shows the
  expected `O(dt)` for BackwardEuler and `O(dt^2)` for
  ImplicitMidpoint. **One snag**: ImplicitMidpoint + mixed form failed
  with `DIVERGED_LINEAR_SOLVE` in all five long-time sweeps despite
  passing a short smoke test at the same dt and t. The figure is still
  scientifically clean (three curves, two informative slopes plus the
  machine-zero floor), but the missing fourth curve is a follow-up.
- `verification/tracy/run_temporal_2d.py` — swapped DIRK22 →
  ImplicitMidpoint to match the paper's integrator set. With PR #226
  in place, CrankNicolson now converges cleanly (was previously stuck
  at 0.68 returning the initial guess) and ImplicitMidpoint hits the
  analytical second-order rate down to the spatial floor at
  `~3.3e-4`. BackwardEuler holds order one across the four dt
  decades. Figure `figures/Tracy/2d_temporal_congergence.pdf`
  regenerated.

### 2. Tracy solution snapshot

`verification/tracy/run_solution.py` and `plot_solution.py` rewritten
to produce a three-column time-evolution figure at
`t = 0, 5 x 10^4, 2.5 x 10^6 s`, matching the paper caption. The
old single-time three-panel `(h_num, h_anal, theta_num)` figure is
retired. Output goes to both `figures/Tracy/solution.pdf` (rasterised
embed, ~100 KB) and `figures/Tracy/solution.png`.

### 3. Tracy spatial — added DG0 sweeps

- `verification/tracy/run_spatial_2d.py` and `run_spatial_3d.py` now
  merge cases into any pre-existing JSON instead of overwriting, so
  selective re-runs do not wipe the other families.
- `specified_head_dg0` added to both 2D and 3D `CASES`. DG0 ran for
  all four 2D levels (51 → 401) and for `nodes` 21, 31, 51 in 3D.
- DG0 in 2D: fitted rate 1.15 (close to the expected O(h^1)).
- DG1 in 2D: fitted rate 1.86 (specified head) / 1.88 (no flux).
- DG0 in 3D: rates roughly O(h^0.8–0.9) — slightly under O(h^1), but
  this is the cleanest the steady-state-stopped 3D sweep gives at
  these mesh sizes.
- DG1 in 3D reproduces the pre-stopper data to four digits — the
  iterative-preset / maxchange-stopper changes from yesterday's commit
  did not move the convergence numbers, as expected.
- Figures `2d_spatial_error.pdf` and `3d_spatial_convergence.pdf`
  regenerated. The Gadi-only DG2 sweep + 3D fine meshes remain
  on `to-do-list.md`.

### 4. Murrumbidgee geographic figures

Four new plot scripts under `parallel_scaling/`, all reading from
`parallel_scaling/murrumbidgee_data/*.csv` (already local — no Gadi
fetch needed):

- `plot_murr_elevation.py` → `figures/Murrumbidgee/elevation.{png,pdf}`
- `plot_murr_mesh.py` → `figures/Murrumbidgee/mesh.{png,pdf}`
- `plot_murr_stratigraphy.py` → `figures/Murrumbidgee/stratigraphy.{png,pdf}`
- `plot_murr_icbc.py` → `figures/Murrumbidgee/ICBC.{png,pdf}`

Shared CSV loaders and the domain polygon live in
`parallel_scaling/_murr_common.py`. Two caveats:

1. The mesh figure uses a `scipy.spatial.Delaunay` triangulation of
   polygon-interior seed points as a stand-in for the production
   `omega.SurfaceMesh`-generated mesh — `omega` is not in the default
   plotting env. The visual triangle count matches the production
   mesh closely enough for a methods figure; if the paper needs
   pixel-accurate provenance the script can be rerun inside the
   Firedrake venv with `omega` and the substitute triangulation
   replaced.
2. The ICBC figure's panel (c) (extraction-site map) is a placeholder
   pending an `extraction_sites.csv` that is not yet in
   `murrumbidgee_data/`. Tracked on `to-do-list.md`.

The layer CSVs (`shallow_layer.csv`, `lower_layer.csv`,
`bedrock_data.csv`) store **depth below surface**, not absolute
elevation — easy to mis-read on first inspection. The plotters
convert to absolute z via `z = surface_elevation - depth`.

### 5. Cockett snapshot

New benchmark driver at `verification/cockett/run_solution.py`,
mirroring the g-adopt demo at
`demos/groundwater/3d_cockett/3d_cockett.py` but extending `t_final`
from 24 h to 72 h and writing VTK snapshots at the paper's four
specific times. `plot_solution.py` uses PyVista off-screen rendering
to produce panel (a) (soil indicator on the cube faces) and panels
(b)-(e) (moisture content at 0, 24, 48, 72 h), composing them into
`figures/Cockett2018/cockett_2018.{png,pdf}`. Run wall-clock ≈ 10 min
serial on a 20x20x26 DQ0 mesh.

## What's still missing — items 6 onward

The remaining figures are all Gadi-bound or otherwise blocked. Per
yesterday's prioritisation:

- **Tracy DG2 sweeps** (2D and 3D) — needs Gadi for the larger meshes
  where serial Newton hits `DIVERGED_MAX_IT`.
- **Tracy 3D fine meshes** (71³, 101³ DG1) — needs Gadi.
- **Vauclin 121×81 DQ2 reference** — laptop-spec reference (61×41) is
  already in `convergence.json`; the paper's caption resolution needs
  a single long Gadi job.
- **Murrumbidgee `example_solution.pdf`** — needs two Gadi production
  runs (with / without extraction) at Δx = 1 km, 300 layers.
- **Murrumbidgee `strong_scaling.pdf`** — no `--phase strong` exists
  in `submit_jobs.py` yet; needs driver wiring + a 1→32-node Gadi
  sweep.
- **Murrumbidgee `hierarchy_levels.pdf` two-curve story** — current
  submission picks one GMG depth per run; the paper wants two
  curves (min iterations vs min wall-clock), which needs a
  hierarchy-depth Gadi sweep.
- **`plot_results.py` per-panel emission** — the script currently
  produces consolidated multi-panel figures (`cockett_solvers.png`,
  `murr_horizontal.png`), but the paper cites separate
  `simulation_time.pdf`, `iterations.pdf`, `memory.pdf` per benchmark.
  Either split the existing figures into the paper-cited files or
  update `main.tex` to point at the consolidated ones.
- **Manuscript text reconciliation**: Vauclin reference 151×101 vs
  121×81 inconsistency between body and caption; "48 CPU cores per
  node" vs the Sapphire Rapids 104 CPU/node runs; the
  `\codedataavailability{TEXT}` placeholder; commented-out
  `memory_layers.pdf`.
- **Follow-up on ImplicitMidpoint + mixed form in equation_type**:
  the long-time sweep fails with `DIVERGED_LINEAR_SOLVE` despite a
  smoke test succeeding at the same dt. Worth a 10-minute debug after
  the queue clears (likely a Jacobian-conditioning interaction with
  the Haverkamp curve at saturated cells).

## File-by-file change log

```
verification/mass_conservation/results/equation_type.json   regenerated
verification/tracy/run_solution.py                          rewritten (3 snapshots)
verification/tracy/plot_solution.py                         rewritten (3 columns)
verification/tracy/run_spatial_2d.py                        +DG0, merge fix
verification/tracy/run_spatial_3d.py                        +DG0, merge fix
verification/tracy/run_temporal_2d.py                       DIRK22 -> ImplicitMidpoint
verification/tracy/results/{spatial_2d,spatial_3d,temporal_2d,solution_2d.npz}  regenerated
verification/cockett/run_solution.py                        new
verification/cockett/plot_solution.py                       new
parallel_scaling/_murr_common.py                            new
parallel_scaling/plot_murr_{elevation,mesh,stratigraphy,icbc}.py  new
figures/Tracy/{solution,2d_spatial_error,2d_temporal_congergence,3d_spatial_convergence}.pdf  regenerated
figures/Tracy/solution.png                                  new
figures/MassConservation/{function_space,equation_type}.pdf  regenerated
figures/Cockett2018/cockett_2018.{pdf,png}                  new
figures/Murrumbidgee/{ICBC,elevation,mesh,stratigraphy}.{pdf,png}  new
```

## Commits

```
088b9a0  Add REPORT.md documenting 2026-05-13 restoration   (yesterday)
6e14710  Regenerate verification figures + add Cockett and Murrumbidgee plotters
```

Pushed to `origin/main`.
