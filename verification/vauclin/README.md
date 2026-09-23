# §3.3 Vauclin (1979) water table recharge

Two figures live here:

- `solution.pdf` — moisture-content snapshots at t = 0, 3, 6, 9 h with
  instantaneous streamlines, reproducing Fig. 4 of the manuscript.
- `convergence_rate.pdf` — spatial convergence of the L² error at
  t = 28,800 s against the finest DQ2 solution (240×160 cells), matching
  paper Fig. 5.

| Script | |
|---|---|
| `run_solution.py` | one medium-resolution run that writes `h`, `θ`, `q` at the requested snapshot times into `results/solution.pvd` (+ `results/solution/*.vtu`) as a ParaView time series |
| `plot_solution.py` | produces `solution.pdf` from `results/solution.pvd` — PyVista renders each moisture-content panel off-screen and integrates the flux streamlines natively (Tracy-style composition); run it from the Firedrake venv since it needs `pyvista` |
| `run_convergence.py` | two stages. `--stage solve` runs DQ0/1/2 on 12, 15, 24, 30, 48, 60, 120 cells across plus the 240×160 DQ2 reference and checkpoints each final `h` to `results/convergence/*.h5`. `--stage errors` loads the checkpoints, interpolates each coarse field onto the reference mesh (exact, because the levels nest) and assembles the L² error with Firedrake. `--quick` is a small nested sweep for testing the pipeline locally |
| `plot_convergence.py` | produces `convergence_rate.pdf` from `results/convergence.json` |
| `vauclin_2d.py` | driver (copied from `richardson/tests/richards/vauclin_2d.py`, patched to expose snapshots + custom mesh) |

The solution run fits on a laptop. The full convergence sweep is a Gadi job (`qsub -v CASE=vauclin_paper verification/submit_gadi.sh`); the 240×160 DQ2 reference takes about half an hour on one node and the whole sweep about an hour. DQ2 diverges on the two coarsest meshes (12 and 15 cells across) and those levels are skipped.
