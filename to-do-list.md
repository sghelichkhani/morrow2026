# Morrow et al. 2026 — outstanding work

Last updated: 2026-08-28 (seasonal reframe — the paper's main scaling result
changed; the fair-comparison figure/manuscript items are superseded).

**Start here:**
- `parallel_scaling/SEASONAL-REPORT-2026-08-28.md` — the authoritative
  current outcome (the seasonal result + the shipped-preset recommendation).
- `NOTES/2026-08-27-MONTHLY-MURRUMBIDGEE.md` — the mechanism and math
  (the column-integrated diffusion number `D_col`).
- `NOTES/2026-08-26-DISCUSSION-REFRAME-PLAN.md` — the conditioning narrative
  for the Discussion (foundation; two of its locked decisions now updated).
- Full pre-seasonal to-do history (fair-comparison figure/table/manuscript
  items T1–T12, C1–C6, B1–B7, the 2026-07-20 plan): archived at
  `NOTES/archive/to-do-list-pre-seasonal-20260828.md`. Those items are
  superseded by the seasonal reframe and are **not** repeated here.

---

## A. Seasonal reframe — outstanding

**A1. Figures.** Build the new main scaling figures. Self-contained spec:

- **Model on** `parallel_scaling/plot_paper_figures.py` (reads `parsed/*.json`,
  writes into `../figures/Murrumbidgee/`, has a `STYLE` dict mapping preset →
  colour/marker/label). Add a new figure function there, or a sibling
  `plot_seasonal_figures.py`; do not hand-edit any PDF.
- **Data:** `parsed/murr_seasonal.json` (graded, headline) and
  `parsed/murr_seasonal_saturated.json` (companion). Each `run` has
  `header.solver`, `header.scale`, `outcome`, `summary.{total_nl,total_linear,
  failed_steps,steps_completed}`, and per-step `steps[].dt_s`. Metrics:
  **iters/Newton** = `total_linear/total_nl`; **max sustained dt (days)** =
  `max(s['dt_s'] for s in steps)/86400`; **failed** = `summary.failed_steps`;
  a run is a **failure** if `outcome` in {`diverged`,`dt_collapse`} or
  `steps_completed==0`, and `walltime` = hit the wall (mark distinctly).
- **Series to plot (4):** `bjacobi`, `gmg` (label GMG-H),
  `vlumping_inexact_rich_lag3` (label VLumping), `vlumping_linesmooth` (label
  VLumping-linesmooth). **Do NOT plot `vlumping_hmg`** — it's excluded as
  unreliable (only a single thrashing h1 point exists; no curve).
- **Panels, x-axis = scale h1..h8 (or DOF / core count):**
  1. graded — iters/Newton vs scale (bjacobi climbs 47→108; the three
     coarse-corrected presets flat/low).
  2. graded — **max-sustained-dt vs scale** (the money panel: bjacobi
     93→39 d, i.e. the ceiling ∝ 1/L²; lumping flat at 93 d).
  3. saturated companion — same axes, showing bjacobi = FAIL at every scale
     while lumping reaches the 3-month step (mark gmg's h1 walltime).
  Numbers to reproduce are in `SEASONAL-REPORT-2026-08-28.md`.
- **Output:** `figures/Murrumbidgee/seasonal_weak.pdf` (+ companion), which
  **replace** `weak_scaling.pdf` as the paper's main scaling figure. Demote
  `strong_scaling.pdf` — strong scaling is no longer the point.

**A2. g-adopt presets (richardson worktree, needs PR #524).** Update the two
shipped extruded presets to the winning config (Richardson smoother + lag-3
snapshot: `vlumping_omega_auto`, `vlumping_lag`). The recommended pair is the
two **direct-coarse** presets — ship `vlumping` (point smoother) and
`vlumping_linesmooth` (line smoother). **`vlumping_hmg` is no longer
recommended** — its iterative coarse thrashes in the seasonal regime (55
failed steps at graded h1); document it as scale-only/fragile, or open a
follow-up to harden its coarse (stronger coarse KSP / direct fallback).

**A3. Manuscript** (`~/Workplace/papers/richards-morrow-2026/`).
- Replace the §3.4/§4 main scaling Results with the seasonal figures (A1).
- Discussion: the conditioning narrative (2026-08-26 note) + the honest
  framing — block-Jacobi is fastest, but only in the ordinary regime; as the
  time step and saturation grow toward what a basin model needs, its
  admissible step collapses with resolution (∝ `1/L²`) and it fails on
  saturated soil, and only vertical lumping stays robust and cheap.
- Fix the appendix solver blocks to the shipped direct-coarse pair.

**A4. SOLVER-STUDY.md.** Headline updated to the seasonal result (done). Still
to do: add the full seasonal §4 tables (currently only in the report), and
demote the daily §4.1–4.5 tables to "ordinary regime" context in the prose.

**A5. Pending data.** Three graded `vlumping_hmg_rich_lag3` jobs (Gadi
`177674103`–`177674105`, h2/h4/h8) are finishing only to quantify hmg's
failure mode; watcher `bgvvujrds` will fire. Then finalize the report's hmg
row (h1 already shows `f55 dt8`). The four saturated hmg jobs were cancelled.

---

## B. Verification items — still open, independent of the solver reframe

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

## C. Pointers

| Where | What |
|---|---|
| `~/Workplace/papers/richards-morrow-2026/` | Paper draft (LaTeX, Copernicus). |
| `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson/` | Richards solver source; shipped presets in `gadopt/richards_solver.py`. |
| `~/Workplace/gwassess` (`g-adopt/gwassess`) | Analytical Tracy / Vauclin / Cockett solutions. |
| Gadi: `/scratch/xd2/sg8812/morrow2026` | Repo clone; seasonal raw runs under `results/murr_seasonal{,_saturated}/`. |
| `NOTES/archive/` | Full pre-seasonal campaign notes + old to-do (trimmed 2026-08-28). |
</content>
