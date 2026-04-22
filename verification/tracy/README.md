# §3.1 Tracy benchmarks

Three figures live here, all testing the Richards solver against
analytical solutions from Tracy (2006) using the `gwassess`
`TracyRichardsSolution2D`/`3D` references.

| Script | Runs | Produces |
|---|---|---|
| `run_spatial_2d.py` | sweep of mesh refinements × polynomial degrees × BC types | `results/spatial_2d.json` |
| `run_spatial_3d.py` | sweep on an extruded cube | `results/spatial_3d.json` |
| `run_temporal_2d.py` | fixed mesh, sweep over time integrators × `dt` | `results/temporal_2d.json` |
| `run_solution.py` | single 2D run, saves h/θ fields for snapshot | `results/solution_2d.npz` |
| `plot_spatial.py` | reads spatial JSONs | `../../figures/Tracy/2d_spatial_error.pdf`, `3d_spatial_congergence.pdf` |
| `plot_temporal.py` | reads temporal JSON | `../../figures/Tracy/2d_temporal_congergence.pdf` |
| `plot_solution.py` | reads solution npz | `../../figures/Tracy/solution.pdf` |

## Theory

Tracy (2006) gives a Fourier-series steady state for Gardner soil
(`θ = θ_r + (θ_s-θ_r) e^{αh}`, `K = K_s e^{αh}`) on a rectangular
domain; we use it as the reference. Expected rate for DQp is
O(h^{p+1}).

For temporal convergence we fix the mesh and march from the analytical
IC at `t_offset` for elapsed time `t_final`, sweeping Δt across
BackwardEuler (first order), DIRK22 and CrankNicolson (second order).

## Running locally

```
source ../../env.sh               # from repo root once
cd verification/tracy
python run_spatial_2d.py          # ≲ 15 min serial
python run_temporal_2d.py         # ≲ 10 min serial
python run_solution.py            # ≲ 1 min
mpiexec -n 8 python run_spatial_3d.py --max-nodes 51   # coarse, local
# for the production 3D figure (101^3, 151^3) submit to Gadi — see ../../to-do-list.md
python plot_spatial.py
python plot_temporal.py
python plot_solution.py
```
