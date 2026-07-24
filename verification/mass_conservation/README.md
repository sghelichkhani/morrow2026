# §3.2 Mass conservation test

Top-hat inflow on a unit square with no-flux sides and bottom; soil is
Haverkamp with the parameters in eq. (Vachaud) of the manuscript. We
track the cumulative mass imbalance

  M = Σ |ΔV_i − ∫ q_N dt|

(eq. NetMassLoss in the manuscript). The paper reports two figures
under §3.2:

| Figure | Driver | Sweep |
|---|---|---|
| `figures/MassConservation/mass-conservation-spatial.pdf` | `run_function_space.py` | Δx × {CG, DQ} × p ∈ {0 (DQ only), 1, 2}, Δt = 100 s fixed — the one `main.tex` includes (§3.2) |

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
upstream `test_mass_balance.py` helper). `plot_mass.py` is the older
combined plotter (both figures in one script); `plot_function_space.py`
and `plot_equation_type.py` split it into one script per figure —
only `plot_function_space.py`'s output is used in the paper now.

## Running locally

```
source ../../env.sh
cd verification/mass_conservation
python run_function_space.py     # ~15 min (5 spaces × 4 grid sizes)
python run_equation_type.py      # ~10 min (4 combos × 5 dt)
python plot_mass.py
```
