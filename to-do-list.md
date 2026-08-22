# Morrow et al. 2026 — outstanding work

Last updated: 2026-08-22 (fair-comparison campaign; supersedes the
2026-07-20 solver-comparison plan below, which was written against
numbers that are no longer valid).

**Start here:** `NOTES/2026-08-22-HANDOVER.md` explains what was done, what
the numbers now are, and what is open. `parallel_scaling/SOLVER-STUDY.md`
§4 carries the authoritative tables.

---

## 2026-08-22 — After the fair-comparison campaign

The solver comparison was rerun with matched Krylov tolerance, matched
residual norm, matched SNES criteria and one mesh per basin scale. The
conclusion changed: block-Jacobi ILU(0) is the fastest solver on every
benchmark once tuned like the others, and the only one that scales to 3328
ranks. VLumping keeps a factor of 2.2 to 3.0 in Krylov iterations and wins
below about four nodes, then loses as the lumped coarse problem comes to
dominate.

### Blocking the manuscript

- **T1. Rewrite §3.4 and §4** around the crossover and the iteration-count
  result rather than a wall-time win. This replaces items C1 and C2 below,
  which assumed VLumping won outright. The claim that VLumping is "the
  only preset that scales" on the basin is still true for convergence and
  no longer true for wall time.
- **T2. Add the scaling limit to the manuscript.** The direct MUMPS coarse
  solve cannot complete a timestep at 1664 ranks and diverges at 3328; the
  nested geometric coarse solve reaches 3328 but turns over after 1664.
  One mechanism, two expressions.
- **T3. Add `SOLVER_STYLE` entries** in `plot_results.py` for the new
  presets, then regenerate every figure from `parsed/`. Nothing new plots
  until this is done.
- **T4. Quote the tolerance ablation** in the text. Matching at 1e-4
  favours the baselines, which pre-empts the obvious referee objection.
- **T5. Appendix solver blocks** must be regenerated from the current
  presets: every compared solver now carries `ksp_pc_side right`,
  `ksp_rtol 1e-4`, `ksp_max_it 200` and an identical SNES block.

### Worth doing, not blocking

- **T6. Repeat runs** for any comparison resting on a margin under a few
  percent. The s2 result (4209 against 4382) needs one; the h8 result
  (1176 against 1289) does not.
- **T7. Report the preallocation defect upstream** with a reproducer. Nine
  runs died with `New nonzero caused a malloc`; it did not recur on rerun
  and affects no number, but it is real. See handover §6.4.
- **T8. Decide `vlumping_lag_smoother`.** The incoherent lag gains about
  1% on the basin against 8% locally, so the safe default is probably
  right. An older reuse-forwarding experiment that should have been
  equivalent degraded badly and nobody has explained why.
- **T9. `gamg_asm`, `ngmres_gmg`, `qn_gmg`** were not in the campaign and
  remain on the old mesh and tolerance. Either rerun them or do not quote
  them beside the new numbers.

### External dependency

- g-adopt PR #524 (`sghelichkhani/richards-core-04-vlumping`) carries the
  `vlumping_lag` and `vlumping_omega_auto` options that the new presets
  need. It must merge before the shipped presets can adopt either.

---


## 2026-07-20 — Solver-comparison rewrite (Option B: VLumping-centric)

The paper's §3.4 (Cockett) and §4 (Murrumbidgee) solver-performance
prose is written for the *old* GMG-H-centric story and no longer matches
the figures, which the current `plot_results.py` pipeline regenerates in
a VLumping-centric form. This section is the authoritative plan to
reconcile the manuscript with the shipped g-adopt solver set. This is a
**paper + figures** task; the g-adopt source change (see "External
dependency") is being done by a separate agent, not here.

### Decisions locked (Sia, 2026-07-20)

- **Narrative reorganised around the shipped g-adopt presets.** Three
  3-D iterative presets get first-class treatment: **BoomerAMG
  (`iterative`), `vlumping`, `vlumping_hmg`**. `direct` (MUMPS LU) is
  2-D-only and outside the scaling comparison.
- **Everything else tried is *noted in text but not shown* in figures:**
  `bjacobi`, `sor`, `gamg`, GMG-H (`gmg`), and the VLumping ablation
  sweep (`vlumping_1sweep`, `_4sweep`, `_richardson`, `_sor`,
  `vlumping_linesmooth`). Their solver parameters should be *noted*, not
  necessarily displayed.
- **AMG baseline = Hypre BoomerAMG** (not PETSc GAMG). No Gadi rerun: the
  existing `boomeramg` Cockett data already used the tuned params, and
  the shipped `iterative` preset is being retuned to match (see below).
- **Strong scaling** (`strong_scaling.pdf`): reframe as an *extreme-scale
  robustness demonstration* — `vlumping_hmg` carrying 320 M DOF at 32
  nodes / 3328 cores at the most extreme aspect ratio — rather than a
  slope-fit strong-scaling test. Keep the figure; write the missing
  prose. (Final keep-vs-cut nod still open.)
- **Example solution** (`example_solution.pdf`): ship the current
  checkpoint-based surface-forced render. Confirmed no source/sink term
  is wired into either driver (`murrumbidgee_3d.py`,
  `murrumbidgee_demo.py` — neither passes a `source=` to
  `RichardsSolver`; forcing is surface rainfall recharge + no-flow
  bottom + hydrostatic sides/IC). The extraction / no-extraction
  two-panel comparison is **deferred to a follow-up** (bore CSV +
  driver sink term + two production runs — not this round).
- **Cockett DQ2**: out of scope for this paper. Drop the empty
  `parallel_scaling/parsed/cockett_dq2.json` scaffold (or leave parked).

### External dependency (NOT our task — separate agent)

- Retune g-adopt's `iterative_richards_solver_parameters`
  (`richardson:gadopt/richards_solver.py:73-97`) to the tuned Cockett
  BoomerAMG: `strong_threshold` 0.7→0.5, `agg_nl` 1→2, add
  `truncfactor 0.3`, add `P_max 4`, `ksp_rtol` 1e-5→1e-6. This makes the
  *shipped* preset identical to `parallel_scaling/solvers/boomeramg.py`,
  which produced the existing Cockett `boomeramg` data, so shipped ==
  reported with no rerun. **The paper's appendix BoomerAMG block must be
  quoted from whatever finally lands in that preset** — coordinate the
  appendix (C3) against it.

### Manuscript items — `~/Workplace/papers/richards-morrow-2026/main.tex`

- **C1. Rewrite §3.4 (Cockett, ≈349-366)** around the shipped trio.
  Discuss all tried baselines in prose (SOR, BJacobi, GMG-H, GAMG,
  BoomerAMG) but headline the recommendation with BoomerAMG (`iterative`),
  `vlumping`, `vlumping_hmg`. Fix the "AMG"↔"GAMG" naming flip — use
  **BoomerAMG** consistently.
- **C2. Rewrite §4 (Murrumbidgee, ≈416-435)** around VLumping: BoomerAMG
  *diverges* on the anisotropic basin (the motivation), GMG-H is the
  strong baseline, `vlumping`/`vlumping_hmg` are the only presets that
  scale. Fold in the "many variants tried, three shipped" framing.
- **C3. Add missing appendix solver blocks (≈477-547).** Currently
  Cockett-only. Add verbatim dicts for `vlumping` and `vlumping_hmg`
  (absent entirely); make the BoomerAMG block match the retuned shipped
  preset (External dependency); add an SOR block or drop SOR from the
  compared set; keep a GMG-H block as a baseline.
- **C4. Factual caption/text fixes:**
  - **48 → 104 CPUs/node** (Sapphire Rapids `normalsr`) at lines 361,
    373, 416, 431; redo the DOF-per-core arithmetic.
  - **Murrumbidgee dt**: text says fixed Δt = 12 h / 200 steps; the
    actual data is **adaptive** (`dt_init = 60 s → dt_max = 12 h,
    growth 1.5`). Reconcile text to data. (Cockett fixed 300 s / 100
    steps is correct.)
  - DOF/node notation `1.8×10⁷` vs `18×10⁶` — pick one.
  - Caption cross-ref bug at line 373 (`§Benchmarking` → `§scalability`).
  - Un-comment `memory_layers.pdf` (line 441) — the file now exists.
  - Inert `_sub_pc_factor_levels` key (line 542) + commented monitors —
    clean up.
- **C5. Strong scaling (≈446-451):** add the missing prose, reframed per
  the decision above (extreme-scale demonstration). Figure is currently
  orphaned (`\includegraphics`'d but never discussed).
- **C6. `\codedataavailability`:** fill with this repo's URL, the g-adopt
  richardson pointer, gwassess (`g-adopt/gwassess`), Gadi project `xd2`.

### Figure-regen items — `parallel_scaling/`

- **B1. Consolidate `plot_results.py:SOLVER_STYLE` to shipped names.**
  Relabel `vlumping_inexact` → "VLumping" (shipped `vlumping` *is* the
  inexact one), `vlumping_hmg` → "VLumping-HMG". Drop the redundant plain
  `vlumping` (rtol 1e-6, not shipped), `vlumping_linesmooth`,
  `ngmres_gmg`, `qn_gmg` from the main-figure solver lists.
- **B2. Cockett figure list** (`fig_cockett`, line 279): swap
  `gamg`→`boomeramg`, add `sor`, giving {SOR, BJacobi, GMG, BoomerAMG,
  VLumping, VLumping-HMG}.
- **B3. Murr-horizontal list** (`fig_murr_horizontal`, line 440): same
  baseline+shipped set; keep `gmg` (GMG-H baseline), drop the extra
  vlumping variants.
- **B4. Regenerate paper figures** into `figures/` and copy to the paper
  tree: Cockett `{simulation_time,iterations,memory}`; Murr-horizontal
  `{time_per_timestep,linear_iterations,memory,hierarchy_levels}`;
  Murr-layers `{linear_iterations_layers,time_per_timestep_layers,
  memory_layers}`; `strong_scaling`.
- **B5. Regenerate `example_solution.pdf`** from the real checkpoint
  render (`viz_murrumbidgee.py`) — the paper slot still points at a stale
  placeholder pre-dating the checkpoint run. Confirm the copied file is
  the real one.
- **B6. Strong-scaling reframe** (`fig_murr_strong`): headline the
  s32 / 320 M-DOF / 3328-core extreme point rather than a slope fit.
- **B7. Drop** the empty `parsed/cockett_dq2.json` scaffold.

### Subsumes / supersedes earlier items

The 2026-05-15 body below already lists some of these in weaker form —
this section is authoritative where they overlap: the 48→104 core fix
(§2), the `memory_layers.pdf` un-comment (§2), the `example_solution`
figure (§1, now scoped down to "ship current render, defer extraction"),
and the strong-scaling caveats (M2/M6, now folded into the reframe).

---

**2026-07-20 — stale-figure cleanup.** Removed three committed figures
that were no longer referenced by `main.tex`, each superseded by a
later pipeline: `Cockett2018/cockett_2018.{pdf,png}` (→
`cockett_infiltration.pdf`, see `parallel_scaling/COCKETT_FIGURE.md`),
`Tracy/2d_spatial_error.pdf` (→ `spatial_convergence.pdf`, see
`verification/tracy/README.md`), and
`MassConservation/equation_type.pdf` (methodology changed since that
sweep ran; excluded from the paper by decision, see
`verification/mass_conservation/README.md`). The generating scripts and
raw data for all three are left in place for reference — only the
committed figure outputs were dropped. If a figure in `figures/` isn't
`\includegraphics`'d anywhere in `main.tex`, that's the signal to check
here before assuming it's still wanted.

Also dropped the four Murrumbidgee setup figures — `elevation.{pdf,png}`,
`mesh.{pdf,png}`, `stratigraphy.{pdf,png}`, `ICBC.{pdf,png}` — by
decision: the combined 3D visualisation in `viz_murrumbidgee.py`
(`figures/Murrumbidgee/example_solution.png`) now covers the same
ground (topography, conductivity structure, water table, forcing) and
replaces the whole standalone-setup-figure block. Generating scripts
(`plot_murr_elevation.py`, `plot_murr_mesh.py`,
`plot_murr_stratigraphy.py`, `plot_murr_icbc.py`) are kept for
reference only. **This is not yet reflected in `main.tex`** — §4's
Figs. 13–16 (and the `example_solution` figure slot, which currently
points at a stale `.pdf` predating the real checkpoint-based run) still
need editing in the paper tree to match. See the M4/M5 to-do items
above, which this decision now resolves by removal rather than by
filling in the placeholders.

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

# §3.2 mass conservation  (~17 min; DQ2 n=101 is 10 of those)
python verification/mass_conservation/run_local_balance.py
python verification/mass_conservation/plot_local_balance.py
# the run_function_space/plot_mass chain was deleted; see
# verification/mass_conservation/README.md for why

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
