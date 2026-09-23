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
- **M7. Vauclin DQ2 rate** — resolved 2026-09-02. The 2.24 was the scipy griddata error measurement (O(Δx²) floor). Errors are now assembled in Firedrake on a nested 240×160 DQ2 reference: DQ1 1.97, DQ2 3.02. Figure regenerated; caption can keep O(Δx³).
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

---

## D. Figure rework: ordinary breakdown out, seasonal breakdown in — DONE 2026-09-03

Decision: the ordinary-regime cost breakdown is dropped and the seasonal
block is renumbered. Target state of the manuscript's figure sequence:

| new | label | content |
|---|---|---|
| 11 | `fig:seasonal_weak` | graded seasonal, horizontal weak scaling. 3 panels: linear iterations / max sustained dt / wall per simulated year |
| 12 | `fig:seasonal_saturated` | saturated seasonal. 2 panels: linear iterations / max sustained dt, plus an in-figure note that BJac-ILU did not converge |
| 13 | `fig:seasonal_breakdown` | graded seasonal, 3 columns (VLumping, GMG-H, BJac-ILU), stacked cost bands against nodes/DOF |
| 14 | `fig:strong_scaling` | unchanged |

Reported presets in all three: **BJac-ILU, VLumping, GMG-H**.
VLumping-linesmooth is removed from the seasonal figures; it stays in the
tables and in the strong-scaling figure.

- **D1 (done). Drop the ordinary breakdown.** Remove `fig_time_breakdown` from
  `parallel_scaling/plot_paper_figures.py`, its entry in `make_all.py`
  (target list and the `murr_horizontal`/`murr_vertical` dependency), and
  `figures/Murrumbidgee/time_breakdown.pdf`. Keep `breakdown_per_solve`
  and `BREAKDOWN_BANDS` — the seasonal figure imports them.
- **D2 (done). Rewrite `fig_seasonal_breakdown`** in `plot_seasonal_figures.py`.
  Dataset changes from `murr_seasonal_saturated` to `murr_seasonal`, so
  every column carries real data and h1 is back in. Layout changes from
  one grouped bar axis to a 1x3 stackplot panel row, one panel per preset,
  x = h1..h8 as nodes/DOF, y shared across the three panels so the presets
  are directly comparable. Keep the dashed SNESSolve total line.
- **D3 (done). Restrict the seasonal preset set** to `["bjacobi", "gmg",
  "vlumping"]` in `plot_seasonal_figures.py`.
- **D4 (done). Two-panel saturated figure.** Split `fig_seasonal_weak` so the
  saturated call drops the wall-time-per-year panel, and add an in-axes
  annotation reading that BJac-ILU completed no timestep at any scale.
  The existing `mark_failures` strip stays; the note names the outcome in
  words rather than relying on the legend alone.
- **D5 (done). Caption and prose.** In the paper tree:
  - delete the `time_breakdown` figure environment and rewrite line ~911
    of `main.tex`, which currently defers the BJac-ILU/VLumping cost
    argument to that figure;
  - move the `seasonal_breakdown` environment after `seasonal_saturated`
    and rewrite its caption for the graded regime;
  - rewrite the `seasonal_saturated` caption for two panels;
  - re-check every `Fig.~\ref` in section 4 and section 5.3 after the
    renumbering.
- **D6 (done). `make_all.py`** — update the target list and the dependency map,
  then run it end to end so the code-availability claim holds.

**Settled while drawing D2.** In the graded regime BJac-ILU survives by
collapsing its timestep, so its cost per nonlinear solve falls from the
880 m mesh to the 620 m mesh (135 to 113 s) while its cost per simulated
year keeps rising. Each x position in the breakdown therefore carries the
timestep that preset sustained there, red where the preset has lost the
three-month ceiling, and the caption says the comparison at 620 m is not
like for like.

**Closed 2026-09-04.** GMG-H's marker was `P` (plus_filled). Hollowing a
marker removes only its interior and keeps the edge stroke, so at the paper's
marker size an unfilled `P` is indistinguishable from a filled one, and the
open-marker convention of the sustained-timestep panels — open means the run
sat on the imposed ceiling rather than on a limit the solver set — did not read
for GMG-H at any point. GMG-H is now `^`. The square `s` was considered and
rejected: it belongs to VLumping-linesmooth, and the two are drawn together in
the Cockett and ordinary-regime figures. `^` was free, because GAMG, which also
carries it, is reported only in the outcome table and is never drawn as a
curve. `Preset.marker` in `reported.py` now records the constraint.

### D7. Review round, 2026-09-03 — findings and what was done

Handoff: `NOTES/team/figure-rework-2026-09-03/reviewer.md`. Six findings, all
verified against the record before acting on them.

- **`PCSetUpOnBlocks` was double counted (fixed).** `breakdown_per_solve` added
  it to PC setup unconditionally. For plain block Jacobi that is right: PETSc
  logs almost nothing under `PCSetUp` and the block factorisation IS the setup.
  For the lumped presets the smoother rebuilds its blocks on every application,
  so PETSc logs the event inside the nested `MG Apply` stage, where it is
  already inside `PCApply`. The band sum therefore ran 1.7 to 3.3 per cent
  ABOVE `SNESSolve` for VLumping and the dashed total line was drawn below the
  stack. The two cases are now separated by the call count. Band sums now sit
  0.1 to 1.7 per cent below `SNESSolve` for every preset in both regimes.
- **"The lumped methods spend most of their time applying the coarse
  correction" was false (fixed).** The nested `MG Apply` stage splits the apply
  into `MGSmooth Level 0` (coarse) and `Level 1` (fine block-ILU smoother).
  The smoother dominates throughout: ordinary h8 is 20 per cent coarse against
  71 per cent smoother, graded seasonal runs from 3/86 at h1 to 21/70 at h8.
  This was pre-existing prose that the deleted figure had cited. The same
  conflation was also in the caption of `Tables/solver_performance.tex`
  and was fixed on 2026-09-04 in `make_performance_table.py`: the caption
  now claims only what the table's columns show (apply, not setup) and
  points at section 4 for the split inside the apply. A blanket claim that
  the smoother always dominates would itself be wrong: on the Cockett box
  `vlumping_linesmooth` spends 42.6 per cent of its apply in the coarse
  solve against 41.2 per cent in the smoother.
- **"Per nonlinear solve" was undefined (fixed by defining it).** The
  denominator is the `SNESSolve` count, which is one per attempted timestep and
  so includes attempts that failed and were retried at half the step (0 to 10
  of 33 to 54 attempts per run). The denominator was kept, because the failed
  attempts are work the run really did and the same convention applies to every
  preset. It reconciles with Table 2: 66.5 s per solve over 11.0 Newton steps
  per solve is 6.03 s per Newton step against the table's 6.11. The caption and
  the docstring now say so.
- **Two "at every scale" superlatives (fixed).** VLumping-linesmooth beats
  VLumping on both wall time per year and cost per solve at all four scales, so
  both claims are now qualified as "of the three drawn".
- **Ordinary-regime profile claims had no figure left to check them against
  (fixed).** They now cite the setup and apply shares that
  Table~\ref{tab:solver_performance} carries.
- **Comments (fixed).** A false reason for a drawing order, "40 days" where the
  record says 39, and a dead local.

Not accepted: the reviewer read the figure as irreconcilable with Table 2. It
reconciles once the Newton count per attempt is used rather than per completed
step.

### D8. Paper fact-check, 2026-09-04 — findings and what was done

Handoff: `NOTES/team/paper-factcheck-2026-09-04/reviewer.md`. The
cross-reference sweep came back clean: every `\ref` resolves, every panel
letter cited exists, and no reference to the deleted `fig:time_breakdown`
survives anywhere in the paper tree. Six statements the record does not
support were found. Five are fixed.

- **The wetter seasonal runs grow the step by two, not 1.5 (fixed).** All 28
  `results/murr_seasonal_saturated/*/*.out` print `growth = 2.0`; the graded
  and ordinary runs print 1.5. `submit_jobs.py:260` sets
  `SEASONAL_SAT_GROWTH = 2.0`. The factor is now stated where the wetter
  profile is introduced, in the Fig 12 caption, and as an exception in the
  two places that asserted 1.5 for every run.
- **"1.9 to 3.1 times lower" is VLumping's range, not the pair's (fixed).**
  VLumping gives 1.88/3.01/3.15/2.40 against BJac-ILU;
  VLumping-linesmooth reaches 3.69 at 880 m. Now 1.9 to 3.7, in both the
  section 4 sentence and the conclusion.
- **The cost bands account for `SNESSolve` to two per cent, not one
  (fixed).** VLumping's panel runs 1.7, 1.4, 1.2, 0.9 per cent below the
  dashed total. The Fig 13 caption said one per cent.
- **The conclusion conflated the two seasonal profiles (fixed).** It claimed
  the full three-month step "at every scale" in a sentence covering the
  wetter profile, where VLumping manages 45.5 d at 1775 m. It also carried
  the graded regime's speed-up ratio into a saturated-regime clause, where
  BJac-ILU has no wall time at all.
- **`vlumping_omega_auto` does not save time everywhere (fixed).** The
  printed parameter dicts of `vlumping` and `vlumping_inexact` differ by
  exactly one key, `'vlumping_omega_auto': True`, so the pair isolates the
  option. It is 11 to 24 per cent faster per Newton step on the basin
  (horizontal 11.3-20.3, vertical 16.7-23.5) but 5 to 12 per cent SLOWER on
  the isotropic Cockett box, where it also needs about a fifth more
  iterations. Section 3 claimed 10-20 per cent "in the experiments below".
  The claim is now scoped to the basin and the box behaviour is stated.

**The false Newton-count mechanism — fixed 2026-09-04.** Section 4.1 and the
Fig 8 caption claimed the coarsest one-node mesh always takes a second Newton
step while finer meshes converge in one, and gave that as the reason for
normalising per Newton step. No such effect exists. The six presets drawn in
Fig 8 each complete the 30 isotropic timesteps in exactly 91 Newton iterations
at all four node counts (three per timestep, four on the first), and the
reported basin presets run 217 to 226 over 75 timesteps, that is 2.9 to 3.0
throughout. The mechanism is deleted from the text, the caption and the
docstring of `wall_per_newton`, and each now states the measured count
instead, noting that the normalisation rescales the curves without changing
their shape.

One trap found while writing the replacement: the constancy holds for the
REPORTED presets, not for every preset that completes. `gamg_asm`,
`vlumping_1sweep`, `vlumping_4sweep`, `vlumping_sor`, `vlumping_richardson`
and the SNES variants take 60, 48, 35, 35 Newton iterations over the same 30
timesteps, which IS resolution-dependent. Any restatement of this claim must
be scoped to the presets drawn.

**Non-blocking, not yet actioned.** Table 2's caption mentions a seasonal
saturated entry the table does not have and calls the basin blocks a
comparison of two presets where they carry four rows; "graded" is used before
it is defined; the wetter case has five different names across the paper;
"block-Jacobi" is used for BJac-ILU in captions while section 4 defines two
block-Jacobi presets; Fig 14's ideal-scaling line is never mentioned in the
text and its open circles clash with the open-marker convention of Fig 12.
The full list with line numbers is in the handoff.

**Provenance gap.** The reported `vlumping` `.out` files that
`parsed/murr_horizontal.json` and `parsed/murr_vertical.json` were built from
are neither on disk nor tracked; they were removed in `1c43671` and are
recoverable from git. `results/cockett/vlumping/huge.out` and the
`murr_seasonal` ones survive, which is how the parameter-dict diff above was
possible.
