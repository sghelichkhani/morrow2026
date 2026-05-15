# Morrow et al. 2026 — outstanding work

Last updated: 2026-05-15.

**Status:** every figure cited by the manuscript has a generating script
in this repo and the data it ingests also in this repo (or
`parallel_scaling/parsed/*.json`). The Gadi data is current as of
2026-05-15 (commits `6daca9b`, `74cfd63`, `2130f46`). One figure — the
Murrumbidgee `example_solution.pdf` — and a handful of manuscript-text
fixes are still pending. Then there are items flagged below as
**must-revisit** for the next agent to scrutinise.

---

## 1. Outstanding figure work (C1)

### `Murrumbidgee/example_solution.pdf`

Paper §4 wants two production runs (with / without water extraction)
at Δx = 1 km, 300 vertical layers, snapshots of the water-table
surface at a handful of times, rendered side-by-side. Not yet done
because the extraction-site data isn't in the repo.

Five sub-tasks:

1. **Import** `parallel_scaling/murrumbidgee_data/extraction_sites.csv`
   (columns: `x`, `y`, `rate`) from wherever the bore-data lives.
2. **Add** `--scenario {extraction|no_extraction}` to
   `parallel_scaling/murrumbidgee_3d.py`. When `extraction`, read the
   CSV and add a Gaussian sink term concentrated at each site to the
   residual.
3. **Snapshot output**: add a `--snapshot-times` flag + VTK output of
   the water table at chosen times.
4. **Write** `parallel_scaling/plot_murr_example_solution.py` that
   reads the VTKs, extracts the water table as the `h = 0` level set
   on the surface mesh, and renders the with/without panels side by
   side into `figures/Murrumbidgee/example_solution.pdf`.
5. **Submit** two production Gadi jobs (Δx = 1 km, 300 layers,
   `vlumping` or `vlumping_inexact`).

Once this is done, the placeholder in `plot_murr_icbc.py` panel (c)
should be replaced with a scatter of the extraction sites on the
polygon.

Rough estimate: a day of code work, plus Gadi queue time.

---

## 2. Manuscript text reconciliations (paper repo, no code)

LaTeX-only touch-ups in `~/Workplace/papers/richards-morrow-2026/`:

- **`\codedataavailability{TEXT}`** placeholder near acknowledgements.
  Fill with this repo's GitHub URL, the g-adopt richardson worktree
  pointer, the gwassess pointer (`g-adopt/gwassess`), and the Gadi
  project number (`xd2`).
- **Vauclin reference resolution**: `main.tex:333` says 151×101 in the
  body, caption at `:338` says 121×81. We now produce 121×81 DQ2 (see
  `verification/vauclin/results/convergence.json`); update the body to
  match the caption.
- **"48 CPU cores per node"** in §4 weak-scaling text → 104 (the
  Sapphire Rapids `normalsr` queue). Adjust DOF-per-core arithmetic
  accordingly.
- **`main.tex:483`** commented `memory_layers.pdf` — the file now
  exists (`figures/Murrumbidgee/memory_layers.pdf`). Decide to
  un-comment or strike.
- **`main.tex:389`** `\includegraphics{...Murrumbidgee/elevation}`
  has no extension. Both `elevation.pdf` and `elevation.png` exist;
  add `.pdf` explicitly.
- **`main.tex:462`** "point-Jacobi (not shown)" — either drop the
  aside or back it with a curve.

Suggested caption additions (optional, but honest):

- **§3.1 temporal** caption: "BackwardEuler shown; higher-order
  tableaux deferred to a follow-up paper."
- **§3.2 equation-type** caption: "BackwardEuler shown; the
  conservative-update path for non-stiffly-accurate tableaux at
  `Ss = 0` is degenerate in saturated cells and is examined
  separately."
- **§4 strong scaling** caption: "vlumping_inexact carries the curve
  to 8 nodes (832 cores); at 32 nodes (3328 cores) its coarse solve
  diverges, so the vlumping_hmg variant — whose nested geometric MG
  remains well-conditioned on the small base mesh — is used to
  extend the curve to the full 320 M DOF / 32-node point."

---

## 3. Must-revisit items (handover scrutiny)

These are decisions / numbers / artefacts I'm not fully confident
about. The next person on this should sanity-check each one before
freezing the paper.

### M1. Tracy 3D DG1 fitted rate

The Gadi sweep shows DG1 reaching ~O(h^1.8) at the finest meshes
(nodes 71 → 101) but the fitted rate over the whole sweep is lower
because the coarse end is in a pre-asymptotic regime. The §3.1 3D
caption currently claims the textbook p+1 rate. Two options:

- Restrict the fitted-rate computation in `plot_spatial.py` to the
  two finest points and report that.
- Soften the caption to "approaches O(h^{p+1})" or "approaches the
  expected rate at the resolved end of the sweep".

**Action:** verify whether the asymptotic rate is really 2 (would
need a 151³ or 201³ DG1 run on Gadi — not currently in `CASES`) or
whether something else is limiting the rate (BCs? steady-state
stopper tolerance interaction?).

### M2. Strong-scaling gap at 16 nodes

`s16` (vlumping_inexact at 1664 cores) was killed after 1h40m stuck
at Newton iter 0. Cause unclear — possibly `dt_init = 60 s` too
aggressive for the parallel-decomposition pattern, or coarse-solver
slowness. The strong-scaling figure currently has a visible gap
between 8 nodes and 32 nodes. Worth one more attempt:

- Retry with `--dt-init 30` or `--dt-init 600` (overshoot then
  shrink) and `--snes-max-it` bumped.
- Or try `vlumping_hmg` at s16 instead of `vlumping_inexact`.

If neither helps, the figure can ship as-is but the caption should
say "vlumping_inexact remains tractable up to 8 nodes; at 16 nodes
and above the inexact-Newton coarse solve hangs, motivating the
switch to vlumping_hmg above".

### M3. Hierarchy L4 points dropped

L4 corresponds to coarsening the 620 m base mesh four times to
9.9 km, leaving ~360 base triangles for 832 ranks (1 cell per ~2.3
ranks). Both `gmg L4` and `vlumping_hmg L4` hung. Either rerun at
16+ nodes (so the coarsest ranks-to-cells ratio works) or accept
that the hierarchy figure tops out at L=3. Currently the figure
shows L=1, 2, 3; caption can note "L=4 dropped because the
9.9-km-coarsest mesh has too few cells for the 832-rank decomposition".

### M4. Murrumbidgee mesh figure substitution

`parallel_scaling/plot_murr_mesh.py` uses
`scipy.spatial.Delaunay` to triangulate seed points inside the
polygon — a stand-in for the omega-built production mesh, because
omega isn't in the default plotting env. The visual triangle count
is right but the mesh isn't pixel-identical to what the production
runs use. Two options:

- Accept as-is (good enough for a methods figure).
- Rerun the plotter inside the Firedrake venv on a machine with
  omega and replace the Delaunay block with the actual production
  mesh.

### M5. ICBC panel (c) placeholder

`plot_murr_icbc.py` panel (c) currently renders "extraction-site CSV
not yet imported" in the polygon. Replace with a real scatter once
C1's extraction-sites CSV lands.

### M6. Strong-scaling baseline interpretation

The strong-scaling figure has only three on-curve points
(`s2`, `s4`, `s8`) plus the off-curve `s32` (vlumping_hmg). A
3-point fit gives a slope estimate but doesn't pin down the
super-linear region clearly. If the §4 prose makes a quantitative
efficiency claim (e.g. "X % parallel efficiency at 8 nodes"),
double-check that against the JSON numbers in
`parallel_scaling/parsed/murr_strong.json` rather than trusting the
visual fit.

### M7. Vauclin DQ2 rate

Fitted DQ2 rate is 2.24. For an L² error on `h` the textbook rate is
p+1 = 3, but in practice initial-condition smoothness and
time-discretisation error often pull this down. 2.24 is not
egregious but if the caption claims O(Δx^3) it should be softened.

### M8. Tracy 2D DG2 — only 3 levels

The Gadi sweep produced 3 successful DG2 levels (76, 151, 301). The
fit over 3 points is rough. If a fourth coarser level (e.g.
nodes=51 DG2) would help the pre-asymptotic story, add it to
`run_spatial_2d.py::ALL_CASES` and re-run.

---

## 4. Parked for a follow-up paper

These are real limitations of the current setup that we agreed to
exclude from the Morrow 2026 paper. The data is in this repo, the
narrative is held back.

### P1. ImplicitMidpoint + mixed form mass conservation

The §3.2 `run_equation_type.py` sweep runs `ImplicitMidpoint × {value,
deriv}` but the `value` (mixed) leg hits a Jacobian zero-pivot the
moment any cell crosses the saturation cap (`h ≥ 0`). The
conservative-update solver Irksome's `sghelichkhani/conservative-update-non-sa`
branch introduces for non-SA tableaux is genuinely under-determined
in saturated cells when `Ss = 0` — no `h` gives `θ > θ_s`.
Stiffly-accurate tableaux (BE, DIRK22, RadauIIA) sidestep this
because they reconstruct `u_new` from the last stage directly with
no separate update solve.

Solver-level workarounds (`mat_mumps_icntl_24=1`, `pc_type=svd`,
iterative on the update solve) prevent the crash but introduce
~`O(10⁻⁵)` mass leak because the equation is inconsistent in
saturated cells. Real fixes:

1. `Ss > 0` (even tiny) — regularises the Jacobian via elastic
   storage; physical and clean, but contradicts the paper's `Ss = 0`
   design choice.
2. Irksome algorithm change: detect saturated cells before the
   update solve, fall back to algebraic stage extrapolation for
   `u_new` there.
3. Soil-curve change: smooth the `θ_s` plateau into an asymptotic
   approach. Changes physics, invertible.

The current §3.2 figure plots BackwardEuler only. The ImplicitMidpoint
entries are still in `verification/mass_conservation/results/equation_type.json`
for the next paper.

### P2. Tracy 2D temporal at the paper-spec 301² DQ2

The current temporal figure uses 201² DQ1 from the laptop. The
paper text quotes 301² DQ2. A Gadi run with the right mesh would be
a small follow-up: bump `DEFAULT_NODES` and `DEFAULT_DEGREE` in
`verification/tracy/run_temporal_2d.py`, run via `submit_gadi.sh`
with a new `tracy_temporal_paper` case. Held back because the
BE-only editorial decision already removed the higher-order curves
that motivated the heavier mesh.

### P3. Tracy CrankNicolson temporal investigation

`run_temporal_2d.py` includes CrankNicolson in `INTEGRATORS` and the
post-PR-#226 Irksome path makes it converge cleanly (it used to
flatline at 0.68 returning the IC). The data is in
`results/temporal_2d.json` but the BE-only plotter doesn't show it.
For the follow-up paper, the curve is publishable.

---

## 5. Reproducing every figure in this repo

Two halves: verification (laptop, ≤ 2 h) and scaling (Gadi-only
data, plot locally).

### Verification (laptop)

```bash
source verification/env.sh   # Firedrake venv + PYTHONPATH

# §3.1 Tracy
python verification/tracy/run_solution.py
python verification/tracy/plot_solution.py
python verification/tracy/run_spatial_2d.py            # DG0 + DG1
python verification/tracy/run_spatial_3d.py --max-nodes 51
python verification/tracy/plot_spatial.py
python verification/tracy/run_temporal_2d.py
python verification/tracy/plot_temporal.py

# §3.2 mass conservation
python verification/mass_conservation/run_function_space.py
python verification/mass_conservation/run_equation_type.py
python verification/mass_conservation/plot_mass.py

# §3.3 Vauclin
python verification/vauclin/run_solution.py
python verification/vauclin/plot_solution.py
python verification/vauclin/run_convergence.py
python verification/vauclin/plot_convergence.py

# §3.4 Cockett snapshot
python verification/cockett/run_solution.py
python verification/cockett/plot_solution.py
```

Total ~2 h on an Apple M1-class laptop.

### Gadi-only data (already on disk; rerun only if drivers change)

```bash
# Tracy DG2 + fine DG1 in 3D + Vauclin paper-spec
qsub -v CASE=tracy_2d_dg2  verification/submit_gadi.sh
qsub -v CASE=tracy_3d      verification/submit_gadi.sh
qsub -v CASE=vauclin_paper verification/submit_gadi.sh

# Strong scaling + hierarchy
python parallel_scaling/submit_jobs.py --phase strong
python parallel_scaling/submit_jobs.py --phase hierarchy
```

After the runs land on Gadi, rsync the JSONs / .out files back and
regenerate:

```bash
rsync -av gadi:/scratch/xd2/sg8812/morrow2026/verification/{tracy,vauclin}/results/ \
  ~/Workplace/morrow2026/verification/{tracy,vauclin}/results/
rsync -av gadi:/scratch/xd2/sg8812/morrow2026/parallel_scaling/results/ \
  ~/Workplace/morrow2026/parallel_scaling/results/
python parallel_scaling/parse_results.py
python parallel_scaling/plot_results.py
python verification/tracy/plot_spatial.py
python verification/vauclin/plot_convergence.py
```

### Scaling figures from existing parsed JSON only

```bash
python parallel_scaling/plot_results.py
```

Emits per-panel PDFs into `figures/Cockett2018/` and
`figures/Murrumbidgee/`, plus the consolidated diagnostic PNGs into
`parallel_scaling/figures/` (gitignored).

### Geographic figures

```bash
cd parallel_scaling
python plot_murr_elevation.py
python plot_murr_mesh.py
python plot_murr_stratigraphy.py
python plot_murr_icbc.py
```

No Firedrake needed — pure matplotlib + scipy.

---

## 6. Pointers

| Where | What |
|---|---|
| `~/Workplace/papers/richards-morrow-2026/` | Paper draft (LaTeX, Copernicus). Update `main.tex` text per §2 above. |
| `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/` | Richards solver source. Public API ships `direct`, `iterative`, `vlumping`, `vlumping_hmg` in `gadopt/richards_solver.py`. |
| `~/Workplace/firedrake-2026-03-03/Irksome` (branch `sghelichkhani/conservative-update-non-sa`) | Time-stepping override used in §3.2 / §3.1 — relevant only for the parked items P1, P3. |
| `~/Workplace/gwassess` (`g-adopt/gwassess`) | Analytical Tracy / Vauclin / Cockett solutions used by the verification drivers. |
| Gadi: `/scratch/xd2/sg8812/morrow2026` | This repo's Gadi clone — production runs read CSVs from `parallel_scaling/murrumbidgee_data/`. |
| Gadi: `/scratch/xd2/sg8812/g-adopt-worktrees/sghelichkhani/richardson` | Richardson g-adopt worktree on Gadi. Driver paths in `submit_jobs.py` reference `morrow2026/parallel_scaling/` (the version with the full solver inventory), **not** the pruned g-adopt copy. |

---

## Archive — pre-2026-05-15 history

Earlier states of this list (Irksome PR #226 fold-in, restoration of
the verification tree, the Murrumbidgee `--solver gamg` → `vlumping`
default, etc.) are now reflected in the code. See `REPORT.md`
(2026-05-13) and `REPORT-2.md` (2026-05-14) for the per-day
walkthroughs.
