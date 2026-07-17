# Tracy temporal convergence on Gadi

This is a sketch of how to run the temporal-convergence sweep for the non-stiffly-accurate Richards integrators (`ImplicitMidpoint`, `DIRK22`, `RadauIIA(2)`) on Gadi. The runs are too long for a laptop session: the reference solve alone is roughly 100 minutes wall on a single Sapphire Rapids node, and three integrators with five dts each pile another two to three hours on top.

## What this measures and why the design changed

The original `run_temporal_2d.py` compares each integrator's solution against Tracy's analytical pressure head and sweeps Δt. That worked for BackwardEuler and CrankNicolson because their temporal truncation error sits well above the spatial floor of a 201² DQ1 mesh (about 5×10⁻⁴ relative). It does not work for the non-SA integrators we now want to qualify, because by Δt ≈ 1.25e3 the temporal error has dropped below the spatial floor and the residual flatlines, hiding the convergence rate.

The redesign uses a numerical reference instead of the analytical one. We compute a single reference solution `h_ref` with `RadauIIA(2)` at a very small Δt on the same mesh, march it from `t_offset` to `t_offset + t_elapsed`, and then for every test run we report `||h_test − h_ref||` instead of `||h_test − h_analytical||`. Spatial error is identical between test and reference (same mesh, same DG scheme, same SIPG penalty) so it cancels exactly in the difference. What remains is pure temporal truncation, which scales like Δt^p as it should.

## Driver layout

Two scripts live next to this file. `run_temporal_reference.py` produces the reference once and pickles it to `results/temporal_reference_<nodes>_<degree>.npy`; this is the long-running step. `run_temporal_sweep.py` reads that reference, sweeps the integrator × Δt grid, and writes one JSON to `results/temporal_sweep.json` with observed orders printed as it goes. Splitting the two means the reference is only ever computed once per (mesh, degree) choice and the sweep can be re-run cheaply if you change the integrator list.

The reference uses `RadauIIA(2)` at `Δt_ref = 25 s`, which gives roughly five-digit temporal accuracy on the production 201² DQ1 mesh — about two orders of magnitude tighter than the smallest test Δt's expected truncation. If you change the test Δt range, recheck that gap.

The sweep currently sets `Δt ∈ {2000, 1000, 500, 250, 125}` for all three integrators. That gives four successive halvings, so three observed-order estimates per integrator, which is enough to call rate convergence cleanly. Drop to three dts if you need to halve runtime.

Both scripts read the soil parameters and analytical IC from the same `gwassess.TracyRichardsSolution2D` driver as `run_temporal_2d.py`. Mass-conservation regularisation is via `Ss = 1e-4` (in `ExponentialCurve`). The local sanity check showed `ImplicitMidpoint` on this problem hits its order-2 rate cleanly when the spatial floor is removed.

## Gadi environment setup

Project is `xd2`. The normalsr queue (Sapphire Rapids, 104 cores and 500 GB per node) is what we use for everything; this driver is single-node and CPU-bound on direct MUMPS solves, so a full node is more than enough.

The Firedrake build lives in `/g/data/xd2/sg5878/firedrake-2026-03-03/venv-firedrake`. Source the activate script as the first thing the PBS script does. The Irksome editable install in that venv points at this repo's `~/Workplace/firedrake-2026-03-03/Irksome` worktree on the `sghelichkhani/conservative-update-non-sa` branch, so the conservative-update fix and the `update_solver_parameters` default both live in there. The richardson g-adopt worktree at `~/Workplace/g-adopt-worktrees/sghelichkhani/richardson` is the one with the `saturation_potential` antiderivative on `ExponentialCurve` and the `richards_mass_term` rewrite that uses it.

On Gadi those paths obviously differ. Mirror them under `/scratch/xd2/<user>/morrow2026-runs/` or wherever you stage run inputs. Set `PYTHONPATH` to the richardson worktree before invoking python so the `gadopt` import resolves to the version with the antiderivative changes rather than whatever editable install `pip` knows about.

## PBS submission

A single job is enough. Write a `tracy_temporal.pbs` next to the scripts that does the reference solve first, then the sweep. The reference dumps a `.npy` and exits, the sweep reads it and writes JSON. Walltime budget is 6 hours for the 201² mesh with all three integrators; ask for 8 to be safe.

```
#!/bin/bash
#PBS -P xd2
#PBS -q normalsr
#PBS -l ncpus=104
#PBS -l mem=200GB
#PBS -l walltime=08:00:00
#PBS -l storage=gdata/xd2+scratch/xd2
#PBS -l wd
#PBS -j oe
#PBS -N tracy_temporal

set -euo pipefail

source /g/data/xd2/sg5878/firedrake-2026-03-03/venv-firedrake/bin/activate
export PYTHONPATH=/g/data/xd2/sg5878/g-adopt-worktrees/sghelichkhani/richardson

cd "$PBS_O_WORKDIR"

python -u run_temporal_reference.py --nodes 201 --degree 1 --dt-ref 25.0 \
    | tee results/temporal_reference.log

python -u run_temporal_sweep.py --nodes 201 --degree 1 \
    | tee results/temporal_sweep.log
```

We do not parallelise across MPI ranks for this run. The mesh is small (about 80k DOFs after DG1 on 201²) and the assembly cost is dominated by the conservative-update solve, which is a serial MUMPS direct factor anyway. Using all 104 cores via `mpiexec` would give noisy timings without speeding the wall-clock up. Run on one rank.

## Outputs and local post-processing

The sweep JSON has the shape

```
{
  "mesh": {"nodes": 201, "degree": 1, "Ss": 1e-4, "t_offset": 1e4, "t_elapsed": 1e5},
  "reference": {"integrator": "RadauIIA(2)", "dt": 25.0, "wall_seconds": ...},
  "integrators": {
    "ImplicitMidpoint": {"expected_order": 2,
                         "dts": [{"dt": 2000.0, "error": ...}, ...]},
    ...
  }
}
```

Pull the JSON back to your laptop with `rsync` and feed it to `plot_temporal.py` (you may need to update the plotter to read the new shape — it currently expects the old `run_temporal_2d.py` output). The figure for the paper is a log-log of `error` versus `dt` with reference slopes overlaid, one panel per integrator.

The reference `.npy` itself is not interesting once the sweep has finished, but keep it around in case you want to add another integrator or another Δt point later — recomputing the reference is the expensive bit, the sweep is comparatively cheap.

## Things to watch for

If the conservative-update solve fails with `DIVERGED_PC_FAILED iterations 0` somewhere mid-run, MUMPS hit a near-zero pivot in the saturated zone. The antiderivative of the `Ss * S * Dt(h)` term should be stopping that, but if Ss has been zeroed by accident, or the soil curve does not provide a `saturation_potential`, the regularisation is gone. Check `richards_equation.py` and the `ExponentialCurve.saturation_potential` implementation are both present.

If the sweep gets `ValueError("Can't take product of TimeDerivative and time-dependent expression")`, the `Ss * S(h) * Dt(h)` form has crept back in. The whole point of the antiderivative rewrite was to dodge that check. Search for `S * Dt` in `richards_equation.py`.

If error plateaus at the spatial floor again, you are running against the analytical reference rather than the numerical one. Check that `run_temporal_sweep.py` is reading from the `.npy` and not falling back to `tracy.pressure_head_cartesian`.

If walltime overruns, the reference is the cause; halve `Δt_ref` only if there is a real reason to (the smallest test Δt has gotten smaller, or the reference is contaminating the smallest test point's error). Otherwise leave it at 25.
