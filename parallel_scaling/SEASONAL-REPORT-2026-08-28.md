# Seasonal Murrumbidgee — the regime that makes vertical lumping essential

**Date:** 2026-08-28. **Status:** final outcome of the seasonal campaign —
the paper's **main scaling result**, replacing the daily fair-comparison
weak/strong-scaling figures (decision confirmed by Sia 2026-08-28).

The two **direct-coarse** vertical-lumping presets — `vlumping` (inexact)
and `vlumping_linesmooth` — are the recommended pair. `vlumping_hmg` was
tested here and found **unreliable** in this regime (severe dt-shrink
thrashing, see the recommendation section); its graded `h1` run
(`f55 dt8` — 55 failed steps, never took a step past ~8 days) established
the fragility, so the remaining hmg jobs (graded `h2/h4/h8` and all four
saturated) were cancelled rather than burn allocation replaying it.

---

## Bottom line

In the ordinary daily regime the fair comparison showed block-Jacobi
ILU(0) is the *fastest* solver on the basin, because a column-aligned
partition lets its ILU act as a free vertical line solver — vertical
lumping's advantage there is "only" a 3–5× lower iteration count, not wall
time. **This report shows that finding is regime-specific.** In the regime
a basin model actually operates in — seasonal (monthly-to-quarterly) time
steps on a near-saturated water table — block-Jacobi's admissible time step
collapses as the mesh is refined and, in the more saturated case, it cannot
advance the solution at all, while vertical lumping takes full three-month
steps at a flat, low iteration count at every scale. That inversion is the
paper's headline.

The discriminant is not the mesh aspect ratio (which the daily runs already
carry at 500:1–4000:1, where block-Jacobi still wins). It is the
**column-integrated diffusion number**

```
D_col = Δt · T / (S_col · L²) ,   T = ∫K dz ,   S_col = ∫(Ss·S + C) dz ,
```

the conditioning of the vertically-collapsed 2-D operator that block-Jacobi
has no coarse correction for — and that vertical lumping assembles by
construction. Seasonal Δt and a near-saturated column (small `S_col`) drive
`D_col` up; block-Jacobi's cost tracks it, lumping's does not.

---

## The experiment

Same basin mesh as the horizontal weak-scaling ladder
(`murr_horiz`): four scales h1/h2/h4/h8 = 1775/1250/880/620 m over 1/2/4/8
Sapphire Rapids nodes (104–832 ranks), 300 extruded layers, ~40→320 M DOF,
weak-scaled. The only changes from the daily runs are three **physical**
levers that raise `D_col`, plus the time-step ceiling:

| lever | flag | graded | saturated |
|---|---|---|---|
| time step cap | `--dt-max` | 3 months (8.0e6 s) | 3 months |
| ramp growth | `--dt-growth` | 1.5 | 2.0 |
| water table raised | `--watertable-offset` | +5 m | +10 m |
| retention flattened | `--retention-flatten` | ÷3 | ÷10 |
| specific storage | `--ss` | 0 | 0 |

Retention flattening is exact: Haverkamp `C = ∂θ/∂h ∝ (θ_s − θ_r)`, so the
driver raises `θ_r` to `θ_s − (θ_s − θ_r)/f`, scaling `C` by `1/f` with
`θ_s` and `K(h)` untouched — a soil that stays near saturation (low specific
yield). Raising the water table saturates more of each column (`C = 0`
there). `Ss` stays 0: the `Ss·S·∂h/∂t` term crashes Irksome's stage-value
splitter, contributes nothing to the mechanism, and BackwardEuler stays
well-posed without it. Metric is **total wall to a fixed `t_final`** plus,
because the driver shrinks dt on a failed step, the **maximum sustained
time step** (the largest dt a solver repeats without failing) and the
per-step iteration count.

Presets: `bjacobi` (the incumbent), `gmg` (GMG-H — a horizontal-coarse
baseline and mechanism control), and three vertical-lumping presets — the
two direct-coarse ones `vlumping_inexact_rich_lag3` ("VLumping", point
smoother) and `vlumping_linesmooth` (line smoother), plus
`vlumping_hmg_rich_lag3` (line smoother + *iterative* geometric-MG coarse),
which this campaign tested and found unreliable here (see the
recommendation).

---

## Results — graded regime (headline)

Cell = iterations/Newton, `f`=failed ramp steps, `dt`=max sustained step
(days; 93 = the full three-month cap). All reached `t_final` (~475–545 d).

| preset | h1 | h2 | h4 | h8 |
|---|---|---|---|---|
| **bjacobi** | 46.7  f0  dt93 | 65.9  f1  dt93 | 97.5  f4  dt70 | **108.3  f10  dt39** |
| gmg (GMG-H) | 32.4  f0  dt93 | 31.0  f0  dt93 | 28.9  f1  dt93 | 27.4  f2  dt93 |
| **vlumping** (inexact) | 5.5  f0  dt93 | 6.2  f0  dt93 | 7.5  f1  dt93 | 9.2  f1  dt93 |
| **vlumping-linesmooth** | 5.5  f0  dt93 | 6.8  f0  dt93 | 8.5  f1  dt93 | 10.7  f2  dt93 |
| ~~vlumping-hmg~~ (fragile) | **f55  dt8** | *cancelled* | *cancelled* | *cancelled* |

- **Vertical lumping is clean and flat.** 5–9 iterations/Newton, 0–1 failed
  ramp steps, and it takes the full three-month step at every scale.
- **Block-Jacobi degrades with resolution and hits an L-dependent time-step
  ceiling.** Its iteration count climbs 47→108 (5–12× lumping, tracking
  `1/L²`), and — the sharper statement — its *maximum sustained time step
  collapses*: 3 months at h1/h2, 70 d at h4, **39 d at h8**. At the fine
  scales it only reaches `t_final` by thrashing (10 failed steps at h8). So
  block-Jacobi's admissible time step scales as the horizontal resolution;
  lumping's does not.
- **GMG-H sits between:** flat but ~4–5× more expensive per solve than
  lumping — a horizontal coarse correction is what is needed, and lumping's
  is far cheaper than a geometric MG on the full base mesh.

## Results — saturated regime (companion)

Same layout. `FAIL` = zero successful steps; `WALL` = hit the 6 h limit.

| preset | h1 | h2 | h4 | h8 |
|---|---|---|---|---|
| **bjacobi** | **FAIL** | **FAIL** | **FAIL** | **FAIL** |
| gmg (GMG-H) | FAIL (WALL) | 38.9  f7  dt91 | 41.2  f4  dt93 | 41.8  f4  dt93 |
| **vlumping** (inexact) | 5.9  f9  dt46 | 6.7  f6  dt93 | 8.6  f3  dt93 | 10.5  f4  dt93 |
| **vlumping-linesmooth** | 5.4  f9  dt46 | 6.6  f4  dt93 | 8.5  f4  dt93 | 11.2  f4  dt93 |
| ~~vlumping-hmg~~ | *not run — cancelled; see graded thrash* | | | |

- **Block-Jacobi cannot take a single step at any scale.** With the water
  table +10 m and `Ss = 0` the saturated bulk is a pure elliptic Poisson
  problem independent of dt; with no horizontal coarse correction its outer
  Krylov diverges (`DIVERGED_ITS`, 200-iteration cap) even at the 60 s
  initial step, and the driver gives up. This is the physically-reached
  analogue of the degenerate `C = 0` end-member.
- **Vertical lumping solves the same problem at every scale**, still at
  5–11 iterations/Newton, though the extreme regime costs it a few failed
  ramp steps (and, at h1, a reduced sustained step of ~46 d). This is why
  the *graded* regime is the headline: there lumping is fully clean.
- **GMG-H is near its limit:** it times out at h1 and survives h2–h8 only at
  ~40 iterations/Newton (4–8× lumping). Confirms the mechanism (horizontal
  coarse correction is necessary and sufficient to survive) while showing
  lumping is the efficient realisation of it.

---

## Solver recommendation (for the shipped g-adopt presets)

The recommended pair is **`vlumping`** and **`vlumping_linesmooth`** — the
two **direct-coarse** presets — updated to the winning configuration
(Richardson fine smoother + lag-3 operator snapshot; gated on g-adopt PR
#524's `vlumping_lag` / `vlumping_omega_auto`).

- `vlumping` — point smoother + **direct** MUMPS coarse: the reliable
  workhorse, fastest at moderate scale.
- `vlumping_linesmooth` — line smoother + **direct** MUMPS coarse: equally
  reliable, a stronger (exact per-column) smoother for the hardest columns.

**`vlumping_hmg` is not recommended for this regime.** Its coarse solve is
an *iterative* geometric MG, not exact, and the seasonal runs show that is
fragile: at graded `h1` — the *easiest* cell — `vlumping_hmg_rich_lag3` took
**55 failed ramp steps**, never sustained a step larger than ~8 days (versus
the full three months for the direct-coarse presets, 0 failed), and ran ~5×
slower. This is the same iterative-coarse weakness that stalled it at h2 in
an earlier campaign, now seen to be systematic rather than a one-off. On the
near-saturated (elliptic) seasonal problem an inexact coarse correction is
simply too weak; a direct coarse solves the 2-D collapsed problem exactly
and stays robust. hmg's only remaining justification is weak-scaling past
~832 ranks, where a direct MUMPS coarse becomes the bottleneck — but that is
untested in this regime, and a fragile preconditioner is the wrong default.
The `rich_lag3` configuration likely compounds the problem: the lag-3
snapshot goes stale as dt ramps. If extreme-scale weak scaling is needed
later, hardening hmg's coarse (a stronger coarse KSP, or a direct fallback
below the rank count where MUMPS is affordable) is the open task, not
shipping hmg as-is.

---

## What this replaces in the paper

- **Replace** the daily fair-comparison weak-scaling figure with the
  seasonal graded regime; keep the saturated regime as the companion "clean
  failure" panel. Strong scaling is not the point of the paper (the point is
  weak scaling — which preset scales up easily while staying fast), so the
  3328-rank strong-scaling material is demoted to context.
- **Discussion** should state plainly that block-Jacobi can be the *fastest*
  solver — but only in the ordinary (short-step, unsaturated) regime; as the
  time step and saturation grow toward what a basin model needs, its
  admissible step collapses with resolution and it stops converging, and
  vertical lumping is the only preset that stays both robust and cheap.

---

## Repository structure (this campaign)

Raw runs, parsed records, and provenance:

| what | where |
|---|---|
| graded regime (headline) | `results/murr_seasonal/` → `parsed/murr_seasonal.json` |
| saturated regime (companion) | `results/murr_seasonal_saturated/` → `parsed/murr_seasonal_saturated.json` |
| campaign-1 monthly (base presets, superseded) | `results/murr_monthly/` — archived, not a paper result |
| driver knobs | `murrumbidgee_3d.py` `--watertable-offset / --retention-flatten / --ss` (defaults reproduce the original setup) |
| case + phase definitions | `submit_jobs.py` `SEASONAL_*` constants, cases `murr_seasonal` / `murr_seasonal_saturated`, phases `seasonal` / `seasonal_saturated` / `seasonal_hmg` |

Both regime directories hold five presets: `bjacobi`, `gmg`,
`vlumping_inexact_rich_lag3`, `vlumping_linesmooth`, and (pending)
`vlumping_hmg_rich_lag3`. Regenerate the JSON with
`python3 parse_results.py --experiments murr_seasonal murr_seasonal_saturated`.

## Provenance

- Gadi, `normalsr` (Sapphire Rapids, 104 cpus/node), project `xd2`,
  `firedrake/main-20260806`. All runs `--profile`.
- Graded matrix: Gadi `177643625`–`177643640` (16 jobs, 2026-08-28).
- Saturated matrix: Gadi `177596885`–`177596900` (16 jobs, 2026-08-27).
- Pending hmg (both regimes): Gadi `177674102`–`177674109` (8 jobs).
- Mechanism, math, and the dial-back history: `NOTES/2026-08-27-MONTHLY-MURRUMBIDGEE.md`.
</content>
