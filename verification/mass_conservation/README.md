# §3.2 Mass conservation test

Top-hat inflow on a unit square with no-flux sides and bottom; soil is
Haverkamp with the parameters in eq. (Vachaud) of the manuscript.

## What we measure, and why it changed

Take the solver's residual and use a piecewise-constant test function
`w`, so every `grad(w)` term drops out. What is left, for cell E and
step n, is eq. (LocalMassLoss):

```
r_E = ∫_E (θ(hⁿ⁺¹) − θ(hⁿ)) dx
      + Δt ∮_{∂E} F̂·n_E ds − Δt ∮_{∂E ∩ ∂Ω} q_N ds
```

with `F̂` the scheme's single-valued numerical flux (SIPG plus the
upwinded gravity flux). Set `w ≡ 1`: then `jump(w) = 0`, every
interior-facet term cancels pairwise, and the cell sum collapses onto
the global balance. So the local and global metrics are the *same*
residual, differing only in where the absolute value sits:

```
L = Σₙ Σ_E |r_E|      local  — no cancellation between cells
G = Σₙ |Σ_E r_E|      global — cells allowed to cancel      ⇒ G ≤ L
```

The gap between them is exactly the failure of local conservation, with
no arbitrary reconstruction to justify. One expression covers both
families: for CG, `jump(h,n) = 0` annihilates the SIPG penalty and
`K(h)` is single-valued so the upwind gravity flux collapses to the
exact centred flux, leaving the averaged Darcy flux — the natural
reconstruction on a continuous space. For DG it is verbatim the
scheme's own numerical flux, so `r_E ≡ 0` identically because the
piecewise constants are a subspace of the test space.

**The result is that global conservation is exact for every space,
CG included.** That is not a numerical accident: with all-flux BCs and
constants in the test space, putting `v = 1` in the residual kills the
diffusion volume term, every SIPG facet term, and both gravity terms,
leaving `∫Dt(θ(h))dx = ∮q_N` as an algebraic identity. Only local
conservation separates the families.

The older scalar of eq. (NetMassLoss), `M = Σ|ΔV_i − ∫q_N dt|`, assembles
`V_i` from the *nodal interpolant* `Function(V).interpolate(θ(h))`. It
reads ~1e-4 for CG against ~1e-10 for DG, which is why it was read as a
CG "mass leak" — but that is a global integral of an interpolated field,
neither L nor G, and the CG signal is not a global loss. Measured on the
residual's own quadrature (`2p+1`, `gadopt/equations.py`), every space
conserves globally to ~4e-11. Treat `M` as a proxy only.

One caveat bounding the claim: the `v = 1` identity needs no strongly
imposed Dirichlet condition. It holds here because all four BCs are
`flux`. Under a head BC (Tracy, Vauclin) CG rows are eliminated strongly
and global conservation is no longer automatic unless the boundary flux
is recovered consistently.

## Result

`results/local_balance.json`, 300 steps of Δt = 100 s, Backward Euler,
θ-form. Cumulative applied water 0.03 m³.

| | Δx = 0.083 | Δx = 0.01 |
|---|---|---|
| G, every space | 4.26e-11 | 4.36e-11 (flat) |
| L, DG0/1/2 | 4.26e-11 | 4.37e-11 (flat) |
| L, CG1 | 2.38e-03 (7.93%) | 9.61e-05 (0.320%) |
| L, CG2 | 1.05e-03 (3.48%) | 4.66e-05 (0.155%) |

Percentages are fractions of the water applied through the top boundary.
`L/G` reaches 5.5e7 for CG1 on the coarsest mesh.

### The 4.3e-11 floor is `snes_rtol`, NOT round-off

This was wrong in an earlier version of this file and in the first draft
of the paper text. Sweeping only the Newton relative tolerance on
DQ1 n=13 (`scratchpad/rtol_probe.py` pattern, reproduced here):

| snes_rtol | G (m³) | G / 0.03 |
|---|---|---|
| 1e-6 | 5.22e-10 | 1.7e-8 |
| 1e-8 (ours) | 4.36e-11 | 1.5e-9 |
| 1e-10 | 4.13e-14 | 1.4e-12 |
| 1e-12 | 4.13e-14 | 1.4e-12 |

The floor tracks the tolerance over four decades and only saturates at
4.1e-14 — *that* is round-off, three decades below what we were calling
round-off. Every Newton solve terminates `CONVERGED_FNORM_RELATIVE`,
never on `atol`. Keep `snes_rtol = 1e-8`: the manuscript states the
Newton controls are held identical across every problem in the work
(`main.tex`, Listing `lst:newton`), so do not special-case this test.

The corrected reading is the stronger one. A floor identical across two
families and four orders of magnitude in dof count, flat in Δx, that
*moves when you move `snes_rtol`*, is the signature of a quantity the
discretisation does not control.

### On `L/G ≈ 1` for DG

`L = G` means the cell residuals are **same-signed**, not that they are
small — `L = G` with large `L` would mean no cancellation and no balance
either. What carries the argument is the *magnitude*: `L` sits at the
solver floor. The ratio is a secondary observation, and the natural one
for a Newton iterate stopped on a residual reduction.

### `L` is a time integral, not a growing aggregate

The obvious referee objection is that `L` sums over cells, so refining
adds terms. It does not inflate: `r_E` is itself a cell integral, making
`L` a discrete L¹ norm over Ω×(0,T). Verified on n=26 — quadrupling the
step count changes CG1's `L` by under 5%:

| Δt | N | L (CG1) |
|---|---|---|
| 200 | 150 | 8.88e-04 |
| 100 | 300 | 9.11e-04 |
| 50 | 600 | 9.24e-04 |

### Degree buys a constant, not a change in behaviour

The CG1/CG2 ratio is 2.28, 2.15, 2.09, 2.06 across the four meshes,
tightening onto 2 under refinement. Do **not** quote a fitted convergence
rate: the successive-pair rates are still climbing (CG1: 1.31, 1.55,
1.70; CG2: 1.23, 1.50, 1.68), so no asymptotic value is established. The
rate-free argument is airtight anyway — a continuous space carries no
single-valued flux for adjacent cells to agree on, so `L > 0` for every
Δx and every p, whereas for DG it is identically zero in exact
arithmetic.

The lower band of the figure spans only ~2.6%; the variation inside it is
where the Newton iteration happens to terminate, and should not be read
as one space outperforming another.

## Figures

| Figure | Driver | Sweep |
|---|---|---|
| `figures/MassConservation/mass-conservation-local-global.pdf` | `run_local_balance.py` → `plot_local_balance.py` | Δx × {CG, DQ} × p ∈ {0 (DQ only), 1, 2}, Δt = 100 s fixed. Two panels, (a) global G and (b) local L, sharing one broken y-axis. **This is the §3.2 figure, and `main.tex` includes it.** |

### Deleted with this change

`mass-conservation-spatial.pdf`, `run_function_space.py`,
`plot_function_space.py`, `plot_mass.py` and `results/function_space.json`
are gone. They produced the superseded eq. (NetMassLoss) figure, which
measured the nodal interpolant rather than the conserved quantity and was
run at the contaminated `t_final = 2e5` where 38.5% of the domain sits at
the saturation cap. Both defects are documented above.

They are recoverable from git history if ever needed — that is why there
is no `ARCHIVE/` copy. Do not resurrect them: the metric is wrong, not
merely superseded.

**`equation_type.pdf` is intentionally not in the paper.** `run_equation_type.py`
swept Δt × {mixed form (`stage_type="value"`), head form
(`stage_type="deriv"`)} × {BackwardEuler, ImplicitMidpoint} on a DQ2
25² grid, but the equation-type formulation itself changed since that
sweep was run, so the comparison it plots is no longer representative
of the current solver. The driver/plotter (`run_equation_type.py`,
`plot_equation_type.py`) and its raw data (`results/equation_form.csv`)
are kept for reference, but do not regenerate or re-add
`figures/MassConservation/equation_type.pdf` without re-running the
sweep against the current formulation first.

`mass_balance.py` holds a thin re-implementation of the g-adopt
mass-balance kernel that exposes `stage_type` (not yet surfaced in the
upstream `test_mass_balance.py` helper). It carries both metrics:
`compute_balance_metrics` for the paper, and `compute_mass_balance`,
which survives only because `run_equation_type.py` still calls it.

## Running locally

```
source ../../env.sh
cd verification/mass_conservation
python run_local_balance.py      # ~17 min; DQ2 n=101 is 10 of those
python plot_local_balance.py

# retired sweep, not in the paper (see note above):
# python run_equation_type.py    # ~10 min (4 combos × 5 dt)
# python plot_equation_type.py
```
