# Morrow et al. 2026 — paper-figure to-do list

Last updated: 2026-05-13.

## Upstream change to fold in: Irksome PR #226

Irksome now ships a conservative variational update for non-stiffly-accurate
`stage_value`, so `ImplicitMidpoint`, `GaussLegendre(2)`, `QinZhang` etc. are
mass-conservative to solver tolerance on the same form (`Dt(theta(h))`,
`Ss = 0`) that BackwardEuler/DIRK22 already handled. The branch in
`~/Workplace/firedrake-2026-03-03/Irksome` on
`sghelichkhani/conservative-update-non-sa` is the reference. Consequences
for this repo, all of which need a sweep:

- The `Ss = 1e-4` regularisation in `verification/tracy/run_temporal_all_dirks.py`
  was a workaround for a singular conservative-update Jacobian on the
  exponential curve. PR #226 added a warm-start (`u_new <- u_0`) that defuses
  the singularity, so the regularisation is no longer needed. Revert to
  `Ss = 0` and rerun.
- The `ExponentialCurve.saturation_potential` antiderivative that
  `instructions.md` and `verification-design.md` rely on was reverted from
  g-adopt (`sghelichkhani/richardson` head `48a8cf44`) — it only existed to
  let `Ss * S * Dt(h)` go through Irksome's `expand_time_derivatives`. With
  `Ss = 0` that whole branch is dead, so the antiderivative is gone and the
  documentation references should be deleted.
- The §3.2 narrative correction (item 10 below) flips sign: pre-fix Irksome
  showed `O(Δt)` mass error on `ImplicitMidpoint`; post-fix it sits at
  solver tolerance, matching what the paper text originally claimed. The
  manuscript text can stay; the figure (`MassConservation/equation_type.pdf`)
  must be regenerated against post-PR-#226 Irksome.
- The temporal-convergence figure (item 10) likewise needs regeneration:
  with the conservative-update path live, `ImplicitMidpoint` should now hit
  its formal order-2 rate against a numerical reference without any
  `Ss > 0` regularisation. g-adopt has a fresh
  `tests/richards/test_temporal_convergence.py` that pins this with an
  analytic MMS for BE/IM/GL(2) on a unit square; treat it as the laptop
  proxy before submitting the Gadi 201²/301² production runs.

If anything in `verification/tracy/` or `verification/mass_conservation/`
still has `Ss = 1e-4` or `saturation_potential` in it after the sweep,
that's a leftover hack that needs removing.

## Pre-PR-#226 history

Single source of truth for the state of every paper figure and what
still needs a human.

## Layout

```
morrow2026/
├── verification/                    # §3.1–§3.3, runnable locally
│   ├── env.sh                       # activates Firedrake venv + paths
│   ├── common.py                    # save_json, load_json, FIGURE_ROOT
│   ├── tracy/                       # §3.1
│   ├── mass_conservation/           # §3.2
│   └── vauclin/                     # §3.3
├── parallel_scaling/                # §3.4 + §4, Gadi only
├── figures/                         # paper-ready PDFs (mirrors manuscript Figures/)
│   ├── Tracy/
│   ├── Vauclin1979/
│   ├── MassConservation/
│   ├── Cockett2018/                 # not yet populated — see §3.4 below
│   └── Murrumbidgee/                # not yet populated — see §4 below
└── to-do-list.md                    # this file
```

Symbol key: ✅ done, ⏳ running, 📝 script ready / no run, 🌏 needs Gadi, ❌ not yet started, ⚠️ known issue.

## Paper figure status

### §3.1 Tracy (2006)

| Figure | Script | Status |
|---|---|---|
| `Tracy/solution.pdf` | `verification/tracy/run_solution.py` + `plot_solution.py` | ❌ **wrong figure.** Paper wants a 3-panel **time evolution** (t = 0, 5×10⁴, 2.5×10⁶ s) of pressure head. We produce a 3-panel (h_num, h_anal, θ_num) snapshot at a single time. `run_solution.py` needs a rewrite to save snapshots at the three paper times. |
| `Tracy/2d_spatial_error.pdf` | `verification/tracy/run_spatial_2d.py` + `plot_spatial.py` | ⚠️ **missing polynomial degrees.** Paper sweeps p = 0, 1, 2; current data covers DG1 (specified-head + no-flux). DG2 is in `ALL_CASES` but needs Gadi; DG0 also still to be added. Any prior DG0/DG2 entries from an alternate driver were discarded because their `dx` convention (`L/(n+1)`) did not match the canonical `dx = L/n` — re-run with the canonical driver before mixing |
| `Tracy/2d_temporal_congergence.pdf` | `verification/tracy/run_temporal_2d.py` + `plot_temporal.py` | ❌ **wrong integrator set.** Paper uses BackwardEuler + ImplicitMidpoint + CrankNicolson. We swapped ImplicitMidpoint for DIRK22. Replace DIRK22 → ImplicitMidpoint in `INTEGRATORS` and rerun. Separately CrankNicolson is stuck at 0.68 for all Δt — Newton silently returns the IC. Root-cause is unknown; affects g-adopt, not just this driver |
| `Tracy/3d_spatial_congergence.pdf` | `verification/tracy/run_spatial_3d.py` + `plot_spatial.py` | ⚠️ **missing polynomial degrees.** Paper covers p = 0, 1, 2 in 3D as well. We have only DG1 up to 51³. Add DG0 + DG2 sweeps and extend DG1 to 71³ / 101³; DG2 + the fine DG1 meshes need Gadi, DG0 + DG1 at small meshes is serial-feasible. The driver now exits on an L² steady-state criterion (default `1e-3`); `t_final = 5e6` s is just the safety cap |

Production spec for Tracy (per paper captions):
- `solution.pdf` uses `L=15.24`, `α=0.25`, `θ_r=0.15`, `θ_s=0.45`, `S_s=0`, `K_s=10⁻⁵` (already match).
- `2d_temporal_congergence.pdf` specifies 301² DQ2 up to t=10⁵ s. **That's Gadi-only.** Our local data uses 201² DQ1 — acceptable for dev, must be overridden by a Gadi run before submission.
- Spatial figure captions explicitly claim rate p+1; current local DG1 fit is 1.8 not 2.0 (still acceptable but on the edge). Gadi sweep with DG0 + DG2 should show cleaner rates.

### §3.2 Mass conservation

| Figure | Script | Status |
|---|---|---|
| `MassConservation/function_space.pdf` | `verification/mass_conservation/run_function_space.py` + `plot_mass.py` | ✅ Δx × {DQ0/1/2, CG1/CG2}. DQ ≲ 7e-11 (flat vs Δx); CG at 1.7e-3 (CG1, dx=1/12) down to 3.4e-5 (CG2, dx=1/100) with clear mesh convergence |
| `MassConservation/equation_type.pdf` | `verification/mass_conservation/run_equation_type.py` + `plot_mass.py` | ⚠️ **regenerate against post-PR-#226 Irksome.** Old run showed ImplicitMidpoint+`stage_type="value"` at `O(Δt)` (4.25e-4 → 2.6e-5); with the conservative-update fix in place it should sit at solver tolerance like BackwardEuler. Once rerun, the §3.2 *Narrative check* edits below are no longer needed — paper text stands as written. |

### §3.3 Vauclin (1979)

| Figure | Script | Status |
|---|---|---|
| `Vauclin1979/solution.pdf` | `verification/vauclin/run_solution.py` + `plot_solution.py` | ✅ 46×31 DQ2, dt=25, snapshots at 0/3/6/9 h with streamlines. Mass balance 1.003 |
| `Vauclin1979/convergence_rate.pdf` | `verification/vauclin/run_convergence.py` + `plot_convergence.py` | ✅ local: DQ0 rate 0.58, DQ1 rate 1.76 against a 61×41 DQ2 reference. 🌏 Paper figure wants a 121×81 DQ2 reference — submit on Gadi for publication-quality plot |

### §3.4 Cockett 3D heterogeneous scaling

| Figure | Script | Status |
|---|---|---|
| `Cockett2018/cockett_2018.pdf` (soil + snapshots) | `parallel_scaling/plot_cockett_snapshots.py` | ❌ **plotting script missing.** VTK output already exists in `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/demos/groundwater/3d_cockett/3d_cockett/*.vtu`. Needs a PyVista/VTK reader that extracts moisture at t = 0, 24, 48, 72 h and a side-by-side 4-panel render |
| `Cockett2018/simulation_time.pdf` | `parallel_scaling/plot_results.py` | ✅ 🌏 Data in `parallel_scaling/parsed/cockett.json`, figure regenerable offline |
| `Cockett2018/iterations.pdf` | `parallel_scaling/plot_results.py` | ✅ 🌏 |
| `Cockett2018/memory.pdf` | `parallel_scaling/plot_results.py` | ✅ 🌏 |

### §4 Lower Murrumbidgee

| Figure | Script | Status |
|---|---|---|
| `Murrumbidgee/elevation.pdf` | `parallel_scaling/plot_murr_elevation.py` | ❌ plotting script missing. Source: `tests/parallel_scaling_richards/murrumbidgee_data/*.csv` on Gadi (elevation grid + polygon) |
| `Murrumbidgee/mesh.pdf` | `parallel_scaling/plot_murr_mesh.py` | ❌ plotting script missing. Render the 2D surface mesh + a vertical slice |
| `Murrumbidgee/stratigraphy.pdf` | `parallel_scaling/plot_murr_stratigraphy.py` | ❌ plotting script missing. Bore-hole measurements + 3-layer schematic |
| `Murrumbidgee/ICBC.pdf` | `parallel_scaling/plot_murr_icbc.py` | ❌ plotting script missing. Three-panel: initial head, rainfall map, extraction points |
| `Murrumbidgee/example_solution.pdf` | `parallel_scaling/plot_murr_solution.py` | ❌ 🌏 needs two Gadi runs (with / without extraction) at Δx=1 km, 300 layers. Dump water-table surface at a few timesteps |
| `Murrumbidgee/time_per_timestep.pdf`, `linear_iterations.pdf`, `memory.pdf`, `hierarchy_levels.pdf` | `parallel_scaling/plot_results.py` (horizontal weak) | ✅ 🌏 |
| `Murrumbidgee/linear_iterations_layers.pdf`, `time_per_timestep_layers.pdf` | `parallel_scaling/plot_results.py` (vertical weak) | ✅ 🌏 |
| `Murrumbidgee/memory_layers.pdf` | currently **commented out** in `main.tex:483` | ⚠️ decide: remove the LaTeX line or add the script + data. If strong scaling also collects per-node memory, the same parse could feed both figures |
| `Murrumbidgee/strong_scaling.pdf` | new strong-scaling phase in `parallel_scaling/submit_jobs.py` | ❌ 🌏 **driver + submission not yet implemented.** Needs a `--phase strong` mode fixing Δx=620 m + 300 layers, varying node count 1→2→4→8→16→32, parsing into `parsed/murr_strong.json` and a `plot_murr_strong` path |
| `Murrumbidgee/hierarchy_levels.pdf` | `parallel_scaling/plot_results.py` | ⚠️ paper narrative describes **two GMG variants** shown on the same plot: one that minimises iteration count, one that minimises wall-clock time. Verify the plotter actually produces both curves (needs the submission to sweep GMG hierarchy depth, not just pick one). |

### §3.1-§3.3 physical-parameter cross-check

Paper captions quote specific parameter values; these should match what the drivers use via `gwassess`:

- **Tracy**: L=15.24, α=0.25 m⁻¹, θ_r=0.15, θ_s=0.45, K_s=10⁻⁵ m/s, S_s=0. Matches drivers ✅.
- **Vauclin (fig:VauchlinSolution caption)**: α=400, β=2.90, A=2.99×10⁴, γ=5, K_s=9.722×10⁻⁵ m/s, θ_r=0, θ_s=0.37. Needs verification against `gwassess.VauclinRichardsSolution2D.get_soil_parameters()`. If they don't match, either the caption or the driver is wrong.
- **Mass-conservation (paper §3.2)**: α=0.5 m, β=1.3, A=0.01 m, γ=1.5, θ_r=0.05, θ_s=0.40, K_s=10⁻⁵ m/s. Matches `mass_balance.py` ✅.

## Pending work (ordered)

### 1. Fix CrankNicolson temporal convergence bug (local, ≤ 30 min)

`verification/tracy/run_temporal_2d.py` produced identical errors of
~0.68 for CrankNicolson at all Δt — the DIRK stepper is returning the
initial guess. BackwardEuler and DIRK22 are fine. Either drop
CrankNicolson from the figure or debug the integrator. If the bug is
real it affects g-adopt, not just this driver.

### 2. Tracy 2D spatial, DG2 leg (Gadi)

DG2 at nodes=76 diverged locally after 50 Newton iterations (matches
g-adopt's own `tests/richards/test_richards.py` which marks DG2 as
longtest and allocates 2–32 cores per level). Submit on Gadi via a PBS
wrapper around `verification/tracy/run_spatial_2d.py --cases specified_head_dg2`
and append into the existing `spatial_2d.json` (the driver merges
cases rather than overwriting).

### 3. Tracy 3D spatial, fine meshes (Gadi)

Submit `verification/tracy/run_spatial_3d.py --max-nodes 101` on Gadi.
The 51³ run already works locally (~10 min); 71³ and 101³ need the
compute. Wrap `verification/tracy/tracy_3d.py::model` in a PBS script
that follows the same pattern as `parallel_scaling/submit_jobs.py`.

### 4. Vauclin 121×81 DQ2 reference for the paper figure (Gadi)

`verification/vauclin/run_convergence.py` currently uses a 61×41 DQ2
reference (local constraint). The paper cites 121×81. Run once on Gadi
with the paper-spec reference and regenerate `convergence_rate.pdf`.
Also add DQ2 coarse cases so the fitted rate 3.0 is visible alongside
the existing DQ0/DQ1 rates.

### 5. §3.4 Cockett snapshot figure (local)

Write `parallel_scaling/plot_cockett_snapshots.py` to read the
existing `.vtu` files from the g-adopt demo directory and produce
`figures/Cockett2018/cockett_2018.pdf`. PyVista is in the Firedrake
venv.

### 6. §4 Murrumbidgee geographic figures (local + Gadi)

Four scripts to write (elevation, mesh, stratigraphy, ICBC). Source
data under `tests/parallel_scaling_richards/murrumbidgee_data/` on
Gadi; copy the CSVs back to `verification/vauclin/...`—sorry,
`parallel_scaling/murrumbidgee_data/` once, then everything can be
rendered locally.

### 7. §4 Murrumbidgee example-solution runs (Gadi)

Two 300-layer runs (with / without extraction) on the horizontal weak
`large` scale, each saving the water-table surface at a handful of
timesteps. Add a `--scenario extraction|no_extraction` flag to
`murrumbidgee_3d.py` or drive from `submit_jobs.py`.

### 8. Fix Tracy solution snapshot figure (local, ≤ 1 h)

`run_solution.py` currently returns *one* time slice with three fields
(h_num, h_anal, θ_num). The paper's `fig:TracySteadyState` needs **three
time slices of pressure head** at t = 0, 5×10⁴ and 2.5×10⁶ s.
Extend `run_solution.py` to capture snapshots along the trajectory and
rewrite `plot_solution.py` as a 3-column time-evolution figure.

### 9. Extend Tracy spatial sweeps to p = 0, 1, 2 (partly local)

Add `specified_head_dg0` (cheap, serial) and `specified_head_dg2`
(Gadi) to both `run_spatial_2d.py::ALL_CASES` and
`run_spatial_3d.py::CASES`. `plot_spatial.py` already handles multiple
curves per panel — just make sure DG0 and DG2 labels show up cleanly.

### 10. Restore ImplicitMidpoint + debug CrankNicolson (local)

Swap `DIRK22` → `ImplicitMidpoint` in `run_temporal_2d.py::INTEGRATORS`
to match the paper's integrator set. With Irksome PR #226 in place the
non-SA conservative-update path is honest, so ImplicitMidpoint should
deliver its formal order-2 rate against the numerical reference (no
`Ss > 0` regularisation, no `saturation_potential` rewrite — both
were workarounds for the pre-fix Irksome and should be ripped out from
`run_temporal_all_dirks.py` and from `instructions.md` /
`verification-design.md`). Then investigate why CrankNicolson returns
the initial guess — likely a stage-ordering issue in g-adopt's
`AbstractRKScheme` when combined with `stage_type="value"`. If it
can't be fixed quickly, note in §3.1 caption which integrator is
omitted and why. The new
`g-adopt:tests/richards/test_temporal_convergence.py` is the laptop
proxy that should pass cleanly before submitting the production sweep.

### 11. Cross-check solver-options appendix against `parallel_scaling/solvers/`

Paper's appendix lists exact PETSc parameter dicts for Direct,
GMRES/BJacobi, GMRES/AMG, GMRES/GMG. Confirm each block matches the
corresponding file in `parallel_scaling/solvers/`
(`direct.py`, `bjacobi.py`, `gamg.py`, `gmg.py`). Any divergence
between paper and code should be fixed in one or the other.

### 12. Paper placeholder: `\codedataavailability{TEXT}`

`main.tex` around the acknowledgements section has a placeholder
`\codedataavailability{TEXT}`. Fill in with a pointer to this repo and
to the g-adopt `richardson` worktree (or its merge target once it
lands). Include a Gadi project number for reproducibility.

### 13. `Figures/Murrumbidgee/elevation` has no file extension

`main.tex:389` has `\includegraphics{...Murrumbidgee/elevation}` with
no `.pdf`. LaTeX will pick whichever extension exists. When the
plotting script lands, emit `.pdf` to be safe.

### 14. §4 Murrumbidgee strong-scaling phase (Gadi)

Add `--phase strong` in `parallel_scaling/submit_jobs.py`. Fix
Δx=620 m and 300 layers (~320 M DOF total) and sweep node count
1→2→4→8→16→32 with the production solver preset. Parse into
`parsed/murr_strong.json`, plot with a `plot_murr_strong` call in
`plot_results.py`.

## Narrative check vs. the manuscript

The temporal-convergence experiment is new — it is not in g-adopt's
test suite. Consider promoting `run_temporal_2d.py` into
`g-adopt/tests/richards/tracy_2d_temporal.py` once the CrankNicolson
bug is understood.

**Discrepancy in §3.2 narrative (ImplicitMidpoint + mixed form).**
*Resolved upstream by Irksome PR #226* — keep this entry until the
figure is regenerated. The paper currently states: *"For the mixed
form (solid lines), both time integrators yield excellent mass
balance, with M ~ 10⁻¹⁰ for all tested Δt."* On pre-#226 Irksome our
runs contradicted this for ImplicitMidpoint: with `stage_type="value"`
ImplicitMidpoint recorded M = 4.25e-4 at Δt=400 s down to M = 2.6e-5
at Δt=25 s — clean O(Δt) decay, not solver tolerance — because the
non-SA linear-combination update destroyed the per-stage conservation.
PR #226 replaces that update with a conservative variational solve, so
on the current Irksome ImplicitMidpoint sits at solver tolerance like
BackwardEuler. The §3.2 figure regeneration (table item ⚠️ above) is
what turns this discrepancy from a manuscript edit into a no-op.
Until the figure lands, do not change the §3.2 prose. Recommended
edits below are kept only as fallback if the regeneration is delayed
past submission.

- Change the §3.2(b) prose to "For the mixed form with a stiffly
  accurate integrator (Backward Euler here) mass is conserved to
  solver tolerance; ImplicitMidpoint, being symplectic but not stiffly
  accurate, exhibits an O(Δt) imbalance. For the head-based form both
  integrators show at-least first-order decay of M with Δt (BE ~
  O(Δt), IM closer to O(Δt^{1.4}) on our data), with ImplicitMidpoint
  delivering about an order of magnitude better conservation at each
  Δt."
- The existing figure (now `equation_type.pdf`) captures this story
  directly — four curves, two slopes and one flat at tolerance.

**Temporal convergence setup.** The BC in `run_temporal_2d.py` is
pinned at the Tracy *steady-state* value (time-independent), so the
problem relaxes toward the steady state from the transient IC. This
matches how g-adopt's own Tracy tests drive the solver and is fine as
long as `t_offset + t_elapsed` is well inside the transient regime —
which at these parameters (decay time ~7e5 s) it is. If the CrankNicolson
integrator is replaced or debugged, regenerate the figure and verify
the BackwardEuler/DIRK22 rates are unchanged.

The Vauclin convergence setup uses interpolation onto a common grid
via `scipy.interpolate.griddata` instead of Firedrake's cross-mesh
projection. This is cheaper and perfectly adequate for a convergence
figure but should be documented in the caption (something like: "L² error
computed on a regular 241×N grid after bilinear interpolation from each
DQ mesh").

§4 strong-scaling figure is cited in the paper but no submission phase
exists in `parallel_scaling/submit_jobs.py`. Either add phase 8 above
or remove the reference from the manuscript.

The legacy `tracy/` directory was superseded by `verification/tracy/`
and has been removed. `tracy_3d.py` now lives in `verification/tracy/`.

**Paper inconsistencies surfaced during the review.**

- `main.tex:333` says the Vauclin reference is 151×101, `main.tex:338`
  (figure caption) says 121×81. Pick one and unify both. The Gadi
  submission for item 4 should match the picked resolution.
- `main.tex:272` says the temporal-convergence figure is DQ2 on 301².
  Our local proxy is DQ1 on 201². The production figure is Gadi-only;
  track as Gadi task 2 below. Don't ship the local PDF as the paper
  figure without a caption note.
- `main.tex:483` has `%\includegraphics{...memory_layers.pdf}`
  commented out — intentional omission or forgotten figure? Decide.
- Paper mentions "point-Jacobi (not shown)" at `main.tex:462`. If
  there's data for this, consider including the curve as a dashed
  "not scalable" reference; otherwise remove the aside.
- Paper's §4 weak-scaling text asserts "approximately 40 million DOF
  per node, 48 CPU cores" — our Sapphire Rapids runs use 104 CPU/node
  (CLAUDE.md). The paper numbers target Cascade Lake. Reconcile in the
  caption or redo on Cascade if it still exists at NCI.
- Paper §4 describes "two GMG variants (solid purple: minimise
  iterations; dotted purple: minimise wall-clock time)". The current
  scaling submission picks one GMG depth per run. Either submit a
  hierarchy-depth sweep and post-process to pick two curves per node
  count, or change the narrative.
- Paper §4 mentions "GMG-H" (horizontal-only coarsening) as the
  preconditioner used. Verify `parallel_scaling/solvers/gmg.py` sets
  the Firedrake mesh hierarchy to coarsen only in x,y.

## Reproducing everything locally

```bash
source verification/env.sh

# ~15 min + ~10 min
python verification/mass_conservation/run_function_space.py
python verification/mass_conservation/run_equation_type.py
python verification/mass_conservation/plot_mass.py

# ~10 min
python verification/tracy/run_solution.py
python verification/tracy/plot_solution.py

# ~15 min
python verification/tracy/run_spatial_2d.py
python verification/tracy/plot_spatial.py

# ~15 min (3 integrators × 4 dts)
python verification/tracy/run_temporal_2d.py
python verification/tracy/plot_temporal.py

# ~15 min (nodes up to 51³)
python verification/tracy/run_spatial_3d.py --max-nodes 51
python verification/tracy/plot_spatial.py

# ~15 min
python verification/vauclin/run_solution.py
python verification/vauclin/plot_solution.py

# ~60 min
python verification/vauclin/run_convergence.py
python verification/vauclin/plot_convergence.py
```

Total runtime for everything in this tree is about 2 hours on an Apple
M1-class laptop.
