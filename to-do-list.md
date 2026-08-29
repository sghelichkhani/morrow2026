# Morrow et al. 2026 — outstanding work

Last updated: 2026-08-29 (solver configuration frozen; submission prep).

**Start here:**
- `NOTES/2026-08-29-HANDOVER.md` — session handover: what the
  frozen solver configuration is, the traps found on the way, and what is
  open. Read before touching the manuscript.
- `parallel_scaling/SOLVER-STUDY.md` §0 — the reported solver configuration
  and the two measurements that fixed it. Read before anything else in that
  document, which was written while the configuration was still moving.
- `parallel_scaling/SEASONAL-REPORT-2026-08-28.md` — the seasonal result.
- `NOTES/2026-08-27-MONTHLY-MURRUMBIDGEE.md` — the mechanism and the maths
  (the column-integrated diffusion number `D_col`), now computed by
  `parallel_scaling/compute_dcol.py` rather than by hand.
- `parallel_scaling/archive/README.md` — what moved to `/g/data` and why.
- Full pre-seasonal history: `NOTES/archive/to-do-list-pre-seasonal-20260828.md`.

---

## 0. Solver configuration — CLOSED 2026-08-29

Every reported preset now uses the measured Richardson damping
(`vlumping_omega_auto`) and no operator snapshot, under the names the paper
and g-adopt both use (`vlumping`, `vlumping_linesmooth`, `vlumping_hmg`).

- **g-adopt**: `_LaggedOperatorMixin` removed; `vlumping_omega_auto` added to
  the shipped presets; `vlumping_linesmooth` added to the public API.
  Commit `cf13249` on `sghelichkhani/richards-core-04-vlumping` (PR #524);
  the seven-PR stack was restacked and pushed.
- **Here**: the snapshot lives on as `solvers/lagged_pc.py` (ablation only),
  the reported presets are shims of the library, every preset module carries
  a `STATUS:` line, and `vlumping` was freed by renaming the old ksp_rtol
  1e-6 variant to `vlumping_rtol6`.
- **Runs**: phase `final_richardson`, 47 jobs, submitted 2026-08-29.

## A. Submission preparation — OPEN

- **S1. Regenerate figures and tables** from the `final_richardson` results,
  then re-check every number quoted in §4 and §5.3 of the manuscript.
- **S2. `Tables/`** — `seasonal_scaling.tex` (mesh-major, `D_col` beside
  block-Jacobi's collapsing step) and `dcol.tex` (§5.3 regime grid) are new
  and need `\input`ting; `solver_outcomes.tex` gained both seasonal blocks
  and a `$\circ$` glyph; `solver_performance.tex` gained a seasonal block and
  now reports VLumping-linesmooth in place of VLumping-HMG on the basin.
  `hierarchy_depth.tex` was orphaned and is no longer generated.
- **S3. `check_record.py`** — fail loudly when a reported run has a parser
  validation failure or a missing `.profile`. Not yet written. This is how
  the missing Cockett and vertical `linesmooth` profiles should have been
  caught.
- **S4. `make_all.py`** — one command that regenerates every figure and every
  table from `parsed/`, so the code-availability statement is testable.
- **S5. Deterministic figures** — matplotlib stamps `CreationDate`, so a
  regeneration shows a spurious diff. Set `SOURCE_DATE_EPOCH`.
- **S6. Provenance table** — figure/table to script to parsed JSON to run
  directories to g-adopt commit, generated rather than hand-written.
- **S7. Central preset map** — display name, run key and plot style are
  currently defined in four files with different content, which is how the
  figures and the performance table came to disagree about which preset was
  the second recommendation.
- **S8. Branch hygiene** — merge `seasonal-results` into `main` (a
  fast-forward), push, and decide on the stale `tracy-snapshots-wip`.
- **S9. Zenodo** — refresh `.zenodo.json` and `CITATION.cff` at submission.

## B. Manuscript — OPEN

- `letter/cover_letter.tex` still argues the pre-seasonal storyline.
- §5.3 labels the ordinary-regime `D_col` range as 5e-4 to 4e-3; those are
  the values for a *daily* step. The ordinary regime caps at 12 hours, giving
  3e-4 to 2.1e-3. The argument is unaffected, the label is wrong.
- §4 describes the lag as a refinement that keeps the setup band negligible
  for both lumped presets. Replace with the measurement that rejected it.
- Nothing in the paper tree is committed.

## C. Seasonal reframe — status 2026-08-28 (evening)

**A1. Figures — DONE.** `parallel_scaling/plot_seasonal_figures.py` writes
`seasonal_weak.pdf`, `seasonal_saturated.pdf` and `seasonal_breakdown.pdf`
into `figures/Murrumbidgee/`, all copied into the paper tree.
`plot_paper_figures.py` was also changed: the weak-scaling figure now reports
`vlumping_linesmooth` in place of `vlumping_hmg`, and the strong-scaling
figure drops block-Jacobi and plots to 16 nodes (the 32-node turnover is
stated in the caption). `parse_results.py` gained a `killed` outcome so that
SIGTERM-killed jobs are no longer reported as divergences.

**A2. g-adopt presets — CLOSED 2026-08-29, and not as written here.** The
lag was measured and rejected, so the shipped presets carry the measured
Richardson damping and no snapshot. See §0 above and SOLVER-STUDY.md §0.

**A3. Manuscript — DONE for §4, §5.3, Conclusion and abstract** (see §B
above for what the frozen configuration still changes).
`~/Workplace/papers/richards-morrow-2026/main.tex`, 726 insertions, compiles
at 57 pages. §4.2 now splits into `sec:ordinary` (one-regime summary of the
daily runs) and `sec:seasonal` (the new main result); §5.3 replaces the
pointwise conditioning argument with `D_col` including the computed numbers;
the verdict everywhere is the two direct-coarse lumped presets as the
default. **Still open:** `Tables/solver_outcomes.tex` needs seasonal rows,
and `letter/cover_letter.tex` still argues the old storyline.

**A4. SOLVER-STUDY.md — partly done.** §0 now states the reported
configuration and the measurements behind it. Still open: add the full
seasonal tables and relabel the daily §4.1–4.5 tables as ordinary-regime
context.

**A5. Pending data — CLOSED.** All eight `vlumping_hmg` jobs had in fact run;
their output was pulled from Gadi, reparsed, and the report corrected (it had
said they were cancelled). No jobs are queued.

**A6. NEW — seasonal vertical weak scaling (not submitted).** Sia asked for
the vertical ladder (Δx = 1775 m fixed, 150→1200 layers) in the seasonal
regime, with `vlumping_linesmooth` in place of `vlumping_hmg`: 4 solvers × 4
scales = 16 jobs, needing a `murr_seasonal_vert` case in `submit_jobs.py`.
Read `NOTES/2026-08-28-PAPER-RESTRUCTURE-PLAN.md` §2 first — `D_col` has no
layer-count dependence, so block-Jacobi is *predicted to survive the whole
ladder*, making this a control experiment with a flat expected result at a
cost of roughly 20–25k SU.

**A7. NEW — the run that would remove the main objection.** The graded regime
modifies the soil, which a reviewer will read as tuning. On the *unmodified*
soil an annual timestep gives median `D_col` of 0.19/0.38/0.76/1.53 across
h1→h8, crossing 1 between h4 and h8 — the same result with the identical
physics of the daily benchmark and a single knob. Four jobs. Not run;
currently the paper handles this by framing the levers as an explicit stress
test.

---

## D. Verification items — still open, independent of the solver reframe

Detail for each is in `NOTES/archive/to-do-list-pre-seasonal-20260828.md`
(§3 Must-revisit, §4 Parked). Carried forward compactly:

- **M1. Tracy 3D DG1 rate** — caption claims textbook p+1; sweep fits ~O(h^1.8)
  (coarse end pre-asymptotic). Soften the caption or run a finer DG1 mesh.
- **M4. Murrumbidgee mesh figure** — `plot_murr_mesh.py` uses a `Delaunay`
  stand-in, not the production omega mesh. Accept, or rerun in the Firedrake env.
- **M5. ICBC panel (c)** — placeholder until the extraction-sites CSV lands (ties to the deferred extraction figure).
- **M7. Vauclin DQ2 rate** — fitted 2.24 vs textbook 3; soften the caption if it claims O(Δx³).
- **M8. Tracy 2D DG2** — only 3 successful levels; a 4th coarse level would firm the fit.
- **P1. ImplicitMidpoint mixed-form mass conservation** — zero-pivot in saturated cells at `Ss=0`; parked for a follow-up. (Note: BackwardEuler at `Ss=0` is fine — confirmed this session.)
- **P2. Tracy 2D temporal at 301² DQ2** — current figure is 201² DQ1; paper-spec mesh is a small Gadi follow-up.
- **P3. Tracy CrankNicolson temporal** — data exists, publishable in a follow-up.

Demoted by the seasonal reframe (strong scaling is no longer the paper's
point): **M2** (s16 hang), **M3** (hierarchy L4), **M6** (3-point strong-scaling fit).

---

## E. Pointers

| Where | What |
|---|---|
| `~/Workplace/papers/richards-morrow-2026/` | Paper draft (LaTeX, Copernicus). |
| `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/` | Richards solver source; shipped presets in `gadopt/richards_solver.py`. |
| `~/Workplace/gwassess` (`g-adopt/gwassess`) | Analytical Tracy / Vauclin / Cockett solutions. |
| Gadi: `/scratch/xd2/sg8812/morrow2026` | Repo clone; seasonal raw runs under `results/murr_seasonal{,_saturated}/`. |
| `NOTES/archive/` | Full pre-seasonal campaign notes + old to-do (trimmed 2026-08-28). |
| `/g/data/xd2/sg8812/morrow2026-archive/` | Bulk output of superseded campaigns; manifest and note in `parallel_scaling/archive/`. |
</content>
