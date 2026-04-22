# §3.3 Vauclin (1979) water table recharge

Two figures live here:

- `solution.pdf` — moisture-content snapshots at t = 0, 3, 6, 9 h with
  instantaneous streamlines, reproducing Fig. 4 of the manuscript.
- `convergence_rate.pdf` — spatial convergence of the L² error at
  t = 28,800 s against a high-resolution DQ2 reference (121×81 grid),
  matching paper Fig. 5.

| Script | |
|---|---|
| `run_solution.py` | one medium-resolution run that saves `h`, `θ`, `q` at the requested snapshot times into `results/solution.npz` |
| `plot_solution.py` | produces `solution.pdf` from `results/solution.npz` |
| `run_convergence.py` | computes a reference solution (p=2, 121×81) and error for `p ∈ {0, 1}` at coarser meshes |
| `plot_convergence.py` | produces `convergence_rate.pdf` from `results/convergence.json` |
| `vauclin_2d.py` | driver (copied from `richardson/tests/richards/vauclin_2d.py`, patched to expose snapshots + custom mesh) |

All runs are 2D and fit on a laptop (each ~ few minutes).
