"""Lower Murrumbidgee demo / example-solution run from a prebuilt checkpoint.

This is the §4 example-solution driver for the *new* mesh workflow: instead of
rebuilding the mesh and stratigraphy inline from gridded CSVs (as the frozen
scaling driver ``murrumbidgee_3d.py`` does), it loads a Firedrake checkpoint
produced by ``lower_murrumbidgee_mesh.py`` (copied into this directory from omega
for provenance; see lower_murrumbidgee_README.md). That
checkpoint carries the terrain-following extruded mesh (real GA SRTM DEM on top,
NGIS-borehole bedrock below) plus two CG1 fields: ``SaturatedConductivity`` (the
piecewise-constant per-formation Ks) and ``Formation`` (1 Shepparton /
2 Calivil / 3 Renmark).

What the checkpoint does NOT carry, and we add here to keep the old physics:

  * Depth-decay. The field Ks is piecewise-constant per formation; we reapply
    the paper's depth-decay factor K_depth on top of it, and the depth-decaying
    porosity theta_s = 0.40 * S_depth, exactly as in murrumbidgee_3d.py. Depth
    is measured from the mesh's OWN top surface, carried in the checkpoint as the
    ``SurfaceElevation`` field (column-top z broadcast down each column), so
    depth = max(SurfaceElevation - z, 0). We do NOT use the old elevation CSV --
    the new DEM covers the eastern rise the CSV missed (CSV surface is up to
    ~100 m wrong out east).
  * Initial condition and forcing. Hydrostatic IC from the water table, rainfall
    recharge on top, no-flow bottom, hydrostatic side. The water table and
    rainfall come from the old CSVs (the only source we have), mapped into the
    checkpoint's offset georeference frame.

Run with the Firedrake venv and the richardson worktree on PYTHONPATH:

    PYTHONPATH=~/Workplace/g-adopt-worktrees/sghelichkhani/richardson \
        ~/Workplace/firedrake-2026-03-03/venv-firedrake/bin/python3 \
        murrumbidgee_demo.py --steps 5

The --checkpoint and --data-dir defaults are repo-relative (they point under
murrumbidgee_demo_data/); the checkpoint .h5 is a large binary kept local.
"""

if __name__ == "__main__":
    # Parse args before importing Firedrake/PETSc, which consumes sys.argv.
    import argparse
    import os
    import sys

    _HERE = os.path.dirname(os.path.abspath(__file__))

    parser = argparse.ArgumentParser(
        description="Lower Murrumbidgee demo run from a prebuilt checkpoint"
    )
    parser.add_argument("--checkpoint", type=str,
                        default=os.path.join(
                            _HERE, "murrumbidgee_demo_data",
                            "lower_murrumbidgee_1500m_150L.h5"),
                        help="Firedrake CheckpointFile with mesh + fields "
                             "(large binary kept local; build it with "
                             "lower_murrumbidgee_mesh.py)")
    parser.add_argument("--mesh-name", type=str,
                        default="firedrake_default_extruded")
    parser.add_argument("--degree", type=int, default=1)
    parser.add_argument("--steps", type=int, default=5,
                        help="Number of steps if --t-final not given")
    # Adaptive timestep (gadopt RichardsTimestepAdaptor). Configured so the
    # SNES iteration count dominates: CFL tiers are disabled (set high) and dt
    # grows while Newton stays at/below --snes-target-its, shrinks otherwise,
    # capped at --dt-max (the paper's 12 h ceiling).
    parser.add_argument("--dt-init", type=float, default=60.0,
                        help="Initial timestep in seconds")
    parser.add_argument("--dt-max", type=float, default=43200.0,
                        help="Maximum timestep (12 h, the paper's Delta t)")
    parser.add_argument("--dt-min", type=float, default=1.0,
                        help="Minimum timestep")
    parser.add_argument("--snes-target-its", type=int, default=4,
                        help="Newton-iteration target: dt grows at/below this, "
                             "shrinks above it")
    parser.add_argument("--t-final", type=float, default=None,
                        help="Final time in seconds (overrides --steps)")
    parser.add_argument("--solver", type=str, default="vlumping")
    parser.add_argument("--data-dir", type=str,
                        default=os.path.join(_HERE, "murrumbidgee_demo_data"),
                        help="Dir with water_table.csv, rainfall_data.csv "
                             "(demo-local copy, isolated from the scaling inputs)")
    parser.add_argument("--offset", type=float, nargs=2,
                        default=(45000.0, 73800.0),
                        help="(x,y) offset of the checkpoint frame relative to "
                             "the old CSV frame; CSV is sampled at node_xy-offset")
    parser.add_argument("--output", type=str, default=None,
                        help="Optional .pvd path to write the solution")
    parser.add_argument("--output-every", type=int, default=0,
                        help="Write output every N steps (0 = initial + final "
                             "only). Each frame is large at production size.")
    _ARGS = parser.parse_args()
    sys.argv = sys.argv[:1]

import resource
import time as time_mod
from pathlib import Path

import numpy as np
import pandas as pd
from scipy.interpolate import griddata

from gadopt import *
from firedrake.exceptions import ConvergenceError
from solvers import get_solver

# Side boundary id from omega's SurfaceMesh (the polygon edge, physical group 1).
SIDE_BC_ID = 1


def load_csv(filepath):
    """Load a CSV with columns x, y, z; return (coords (n,2), values (n,))."""
    df = pd.read_csv(filepath)
    return df[["x", "y"]].values, df["z"].values


def csv_field_on_nodes(node_xy, csv_path):
    """Interpolate a scattered CSV field at the given node (x,y) coordinates.

    Linear where the convex hull covers the query, nearest elsewhere so there
    are no NaNs. ``node_xy`` must already be in the CSV's coordinate frame.
    """
    src_coords, src_values = load_csv(csv_path)
    out = griddata(src_coords, src_values, node_xy, method="linear")
    nan = np.isnan(out)
    if np.any(nan):
        out[nan] = griddata(src_coords, src_values, node_xy[nan], method="nearest")
    return out


def model(checkpoint, mesh_name, degree=1, steps=5,
          solver="vlumping", data_dir="./murrumbidgee_demo_data",
          offset=(45000.0, 73800.0), dt_init=60.0, dt_max=43200.0,
          dt_min=1.0, snes_target_its=4, t_final=None, output=None,
          output_every=0):
    data_dir = Path(data_dir)

    # --- Load mesh + fields from the checkpoint -------------------------------
    with CheckpointFile(checkpoint, "r") as f:
        mesh = f.load_mesh(mesh_name)
        Ks_ckpt = f.load_function(mesh, "SaturatedConductivity")
        surf_ckpt = f.load_function(mesh, "SurfaceElevation")

    # load_mesh does not restore G-ADOPT's cartesian flag; this is a metric
    # x/y/z frame with gravity along -z, so upward_normal needs it set.
    mesh.cartesian = True

    log(f"Loaded checkpoint {checkpoint}")
    log(f"Mesh: {mesh.num_cells()} horizontal cells, layers attr {mesh.layers}")

    # DG tensor-product solution space (matches the solver presets).
    horiz_elt = FiniteElement("DG", triangle, degree)
    vert_elt = FiniteElement("DG", interval, degree)
    elt = TensorProductElement(horiz_elt, vert_elt)
    V = FunctionSpace(mesh, elt)
    log(f"Number of degrees of freedom: {V.dim()}")

    # Node coordinates of the DG solution space (where the CSV fields land).
    Vc = VectorFunctionSpace(mesh, elt)
    node_xy = Function(Vc).interpolate(SpatialCoordinate(mesh)).dat.data_ro[:, :2]
    csv_xy = node_xy - np.asarray(offset)  # map into the old CSV frame

    # --- Depth from the checkpoint's SurfaceElevation, then depth-decay soil ---
    # SurfaceElevation is the column-top z carried at every node, so depth below
    # the real DEM surface is simply max(SurfaceElevation - z, 0).
    x = SpatialCoordinate(mesh)
    surface = Function(V, name="SurfaceElevation").interpolate(surf_ckpt)
    depth = Function(V, name="depth").interpolate(max_value(surface - x[2], 0))
    dmin, dmax = depth.dat.data_ro.min(), depth.dat.data_ro.max()
    log(f"Depth below surface: {dmin:.1f} .. {dmax:.1f} m")

    S_depth = max_value(1 / ((1 + 0.000071 * depth) ** 5.989), 0)
    K_depth = max_value((1 - depth / (58 + 1.02 * depth)) ** 3, 0)

    # Field Ks (piecewise-constant per formation) -> DG, with depth-decay on top.
    Ks_field = Function(V, name="Ks_field").interpolate(Ks_ckpt)
    Ks = Function(V, name="SaturatedConductivity")
    Ks.interpolate(Ks_field * K_depth)

    soil_curves = HaverkampCurve(
        theta_r=0.025,
        theta_s=0.40 * S_depth,
        Ks=Ks,
        alpha=0.44,
        beta=1.2924,
        A=0.0104,
        gamma=1.5722,
        Ss=0,
    )

    # --- Initial condition + forcing from the CSVs ----------------------------
    watertable_np = csv_field_on_nodes(csv_xy, data_dir / "water_table.csv")
    watertable = Function(V, name="water_table")
    watertable.dat.data[:] = watertable_np

    rainfall_np = csv_field_on_nodes(csv_xy, data_dir / "rainfall_data.csv")
    rainfall = Function(V, name="rainfall")
    rainfall.dat.data[:] = rainfall_np

    # Hydrostatic IC: head zero at the water table (depth = depth-to-water).
    h = Function(V, name="PressureHead")
    h.interpolate(depth - watertable)

    rain_scaling = 0.15 * 3.171e-11  # 15% recharge fraction x mm/yr -> m/s
    richards_bcs = {
        "bottom": {"flux": 0},
        "top": {"flux": rain_scaling * rainfall},
        SIDE_BC_ID: {"flux": -(h - (depth - watertable))},
    }

    # --- Solver ---------------------------------------------------------------
    dt = Constant(dt_init)
    solver_parameters, solver_kwargs = get_solver(solver)
    log(f"Solver: {solver}")

    richards_solver = RichardsSolver(
        h, soil_curves, dt,
        timestepper=BackwardEuler,
        bcs=richards_bcs,
        solver_parameters=solver_parameters,
        **solver_kwargs,
    )

    # SNES-iteration-dominated adaptive timestep. The CFL tiers are pushed out
    # of the way (large target_cfl, large minimum_diffusive_dt) so the controller
    # is governed by Newton's iteration count: dt grows by snes_scale_up while
    # the SNES converges at/below snes_target_its and shrinks by snes_scale_down
    # when it takes longer, capped at dt_max (the paper's 12 h step).
    adaptor = RichardsTimestepAdaptor(
        dt, richards_solver,
        target_cfl=1e12,
        target_diffusive_cfl=1e12,
        minimum_diffusive_dt=1e12,
        snes_target_its=snes_target_its,
        snes_scale_up=1.5,
        snes_scale_down=0.5,
        maximum_timestep=dt_max,
        minimum_timestep=dt_min,
        post_retry_cooldown=2,
    )

    out = VTKFile(output) if output else None
    if out:
        out.write(h, Ks, depth, time=0.0)

    # --- Time stepping --------------------------------------------------------
    sim_time = 0.0
    total_nl_it = total_l_it = 0
    wall_times = []
    step = 0
    retries = 0
    max_retries = 4
    stop = (lambda: sim_time >= t_final) if t_final is not None \
        else (lambda: step >= steps)

    h_old = Function(V, name="PressureHead_old")
    while not stop():
        h_old.assign(h)
        adaptor.update_timestep()
        t0 = time_mod.perf_counter()

        for attempt in range(max_retries + 1):
            try:
                richards_solver.solve()
                break
            except ConvergenceError:
                if attempt == max_retries:
                    log("Newton failed after retries, giving up")
                    raise
                retries += 1
                h.assign(h_old)
                dt.assign(max(float(dt) * 0.5, dt_min))
                adaptor.record_retry()
                log(f"Step {step + 1} retry {attempt + 1}: "
                    f"dt -> {float(dt):.1f} s")

        wall = time_mod.perf_counter() - t0
        wall_times.append(wall)
        sim_time += float(dt)
        step += 1

        snes = richards_solver.ts.stepper.solver.snes
        nl_it = snes.getIterationNumber()
        l_it = snes.getLinearSolveIterations()
        total_nl_it += nl_it
        total_l_it += l_it
        log(f"t = {sim_time / 86400:.2f} d | step {step} | "
            f"dt = {float(dt):.1f} s | wall {wall:.2f} s | NL {nl_it} | L {l_it}")

        if out and output_every > 0 and step % output_every == 0:
            out.write(h, Ks, depth, time=sim_time)

    # Always capture the final state for visualisation.
    if out and wall_times:
        out.write(h, Ks, depth, time=sim_time)

    mem_mb = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss / 1024
    if wall_times:
        log(f"Done | total NL {total_nl_it} | total L {total_l_it} | "
            f"mean wall/step {sum(wall_times) / len(wall_times):.2f} s | "
            f"peak RSS {mem_mb:.0f} MB | steps {step} | "
            f"retries {retries} | sim_time {sim_time / 86400:.2f} d")
    else:
        log("FAILED -- no successful steps")


if __name__ == "__main__":
    model(
        _ARGS.checkpoint, _ARGS.mesh_name,
        degree=_ARGS.degree, steps=_ARGS.steps,
        solver=_ARGS.solver, data_dir=_ARGS.data_dir, offset=tuple(_ARGS.offset),
        dt_init=_ARGS.dt_init, dt_max=_ARGS.dt_max, dt_min=_ARGS.dt_min,
        snes_target_its=_ARGS.snes_target_its, t_final=_ARGS.t_final,
        output=_ARGS.output, output_every=_ARGS.output_every,
    )
