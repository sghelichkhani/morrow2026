# §3.2 Mass conservation test

Top-hat inflow on a unit square with no-flux sides and bottom; soil is
Haverkamp with the parameters in eq. (Vachaud) of the manuscript. We
track the cumulative mass imbalance

  M = Σ |ΔV_i − ∫ q_N dt|

(eq. NetMassLoss in the manuscript). The paper reports two figures
under §3.2:

| Figure | Driver | Sweep |
|---|---|---|
| `figures/MassConservation/function_space.pdf` | `run_function_space.py` | Δx × {CG, DQ} × p ∈ {0 (DQ only), 1, 2}, Δt = 100 s fixed |
| `figures/MassConservation/equation_type.pdf`  | `run_equation_type.py`  | Δt × {mixed form (stage_type="value"), head form (stage_type="deriv")} × {BackwardEuler, ImplicitMidpoint}, DQ2 on 25² grid |

`mass_balance.py` holds a thin re-implementation of the g-adopt
mass-balance kernel that exposes `stage_type` (not yet surfaced in the
upstream `test_mass_balance.py` helper). `plot_mass.py` reads both
JSONs and produces both PDFs.

## Running locally

```
source ../../env.sh
cd verification/mass_conservation
python run_function_space.py     # ~15 min (5 spaces × 4 grid sizes)
python run_equation_type.py      # ~10 min (4 combos × 5 dt)
python plot_mass.py
```
