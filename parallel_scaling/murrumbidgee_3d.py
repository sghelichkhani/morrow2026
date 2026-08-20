"""Lower Murrumbidgee floodplain scaling benchmark.

Weak-scaling test for the Richards equation solver on a real-world
basin-scale domain (~300 x 120 km). Terrain-following extruded mesh
with depth-dependent Haverkamp soil curves and three geological layers.

Requires:
    - omega package (mesh generation and terrain-following hierarchy)
    - CSV data files in the directory specified by --data-dir:
        elevation_data.csv, bedrock_data.csv, shallow_layer.csv,
        lower_layer.csv, water_table.csv, rainfall_data.csv

Usage:
    mpiexec -n 48 python murrumbidgee_3d.py --horiz-res 5000 --layers 50 \
        --solver gamg --steps 20 --data-dir ./murrumbidgee_data
"""

if __name__ == "__main__":
    # Parse arguments before importing Firedrake/PETSc, which consumes
    # sys.argv on initialisation and triggers spurious "unused options" warnings.
    import argparse
    import sys

    parser = argparse.ArgumentParser(
        description="Lower Murrumbidgee Richards scaling test"
    )
    parser.add_argument("--horiz-res", type=float, required=True,
                        help="Horizontal mesh resolution in metres")
    parser.add_argument("--layers", type=int, required=True,
                        help="Number of vertical extruded layers")
    parser.add_argument("--degree", type=int, default=1)
    parser.add_argument("--dt", type=float, default=43200.0,
                        help="Time step in seconds (default 0.5 days)")
    parser.add_argument("--steps", type=int, default=20)
    parser.add_argument("--dt-init", type=float, default=None,
                        help="Initial dt for ramp-up (if set, enables adaptive ramp)")
    parser.add_argument("--dt-max", type=float, default=43200.0,
                        help="Maximum dt for adaptive ramp (default 0.5 days)")
    parser.add_argument("--dt-growth", type=float, default=1.5,
                        help="Growth factor per successful step (default 1.5)")
    parser.add_argument("--dt-shrink", type=float, default=0.5,
                        help="Shrink factor on solver failure (default 0.5)")
    parser.add_argument("--t-final", type=float, default=None,
                        help="Final simulation time in seconds (overrides --steps)")
    parser.add_argument("--solver", type=str, default="vlumping",
                        help="Solver preset (default: vlumping, the "
                             "canonical g-adopt preset for extruded 3D).")
    parser.add_argument("--refinement-levels", type=int, default=0)
    parser.add_argument("--data-dir", type=str, default="./murrumbidgee_data")
    parser.add_argument("--profile", action="store_true",
                        help="Reduce PETSc text output during a profile run")
    _ARGS = parser.parse_args()
    sys.argv = sys.argv[:1]

import resource
import time as time_mod
from pathlib import Path

import numpy as np
import pandas as pd
from scipy.interpolate import griddata

from gadopt import *
from solvers import get_solver


# Domain polygon vertices (matching the original Murrumbidgee demo)
DOMAIN_VERTICES = [
    (0, 35000),
    (140000, 0),
    (280000, 0),
    (280000, 68000),
    (201000, 130000),
    (121000, 130000),
    (0, 100000),
]

# Side boundary ID from omega's SurfaceMesh (physical group tag)
SIDE_BC_ID = 1


def load_csv(filepath):
    """Load a CSV with columns x, y, z and return coords and values."""
    df = pd.read_csv(filepath)
    coords = df[["x", "y"]].values
    values = df["z"].values
    return coords, values


def load_spatial_field(V, V_cg, mesh_xy, csv_path, name):
    """Load a CSV field and interpolate it into the DG solution space.

    Follows the original Murrumbidgee demo: CSV → CG1 (via griddata) → DG
    (via interpolation). All fields must live in the same DG space as the
    solution to avoid function-space mismatches in the nonlinear forms.

    Args:
        V: DG FunctionSpace (solution space).
        V_cg: CG1 FunctionSpace on the same mesh.
        mesh_xy: Array of (x,y) coordinates for CG1 nodes, shape (n, 2).
        csv_path: Path to CSV file with columns x, y, z.
        name: Name for the returned Function.
    """
    src_coords, src_values = load_csv(csv_path)
    interp = griddata(src_coords, src_values, mesh_xy, method="linear")
    nan_mask = np.isnan(interp)
    if np.any(nan_mask):
        interp[nan_mask] = griddata(
            src_coords, src_values, mesh_xy[nan_mask], method="nearest"
        )

    cg_field = Function(V_cg)
    cg_field.dat.data[:] = interp
    return Function(V, name=name).interpolate(cg_field)


def model(horiz_res, n_layers, degree=1, dt_value=43200.0, steps=20,
          solver="vlumping", refinement_levels=0, data_dir="./murrumbidgee_data",
          dt_init=None, dt_max=43200.0, dt_growth=1.5, dt_shrink=0.5,
          t_final=None, profile=False):
    """Run Lower Murrumbidgee scaling benchmark.

    Args:
        horiz_res: Target horizontal mesh resolution in metres.
        n_layers: Number of vertical extruded layers.
        degree: DG polynomial degree.
        dt_value: Time step in seconds (default 0.5 days).
        steps: Number of time steps.
        solver: Solver preset name from solvers/.
        refinement_levels: Mesh hierarchy levels for geometric MG.
        data_dir: Path to directory containing CSV data files.
        dt_init: Initial dt for ramp-up mode. If None, uses fixed dt.
        dt_max: Maximum dt in ramp-up mode.
        dt_growth: Factor to grow dt after each successful step.
        dt_shrink: Factor to shrink dt after a solver failure.
        t_final: Target simulation time. If set, overrides steps.
        profile: Reduce PETSc text output during a profile run.
    """
    from omega import SurfaceMesh, Polygon
    from omega.mesh.builder import build_mesh_hierarchy

    data_dir = Path(data_dir)

    # Build 2D surface mesh
    poly = Polygon(DOMAIN_VERTICES)

    if refinement_levels > 0:
        # For GMG: generate a coarser surface mesh, then refine horizontally
        coarse_res = horiz_res * (2 ** refinement_levels)
        sm = SurfaceMesh(poly, resolution=coarse_res)
    else:
        sm = SurfaceMesh(poly, resolution=horiz_res)
    sm.generate()
    mesh2d = sm.to_firedrake_mesh()

    # Load terrain data
    elev_coords, elev_values = load_csv(data_dir / "elevation_data.csv")
    bed_coords, bed_values = load_csv(data_dir / "bedrock_data.csv")

    # Build terrain-following extruded mesh (with or without hierarchy)
    mh3d = build_mesh_hierarchy(
        mesh2d,
        elevation_coords=elev_coords,
        elevation_values=elev_values,
        depth_coords=bed_coords,
        depth_values=bed_values,
        n_layers=n_layers,
        refinement_levels=refinement_levels,
        refinement_ratio=1,  # horizontal-only coarsening
    )
    mesh = mh3d[-1]
    # G-ADOPT convention: tag every hierarchy level as Cartesian so the gravity
    # term's upward_normal/is_cartesian resolves on coarse grids too.
    for m in mh3d:
        m.cartesian = True

    # Function spaces — tensor product DG elements on triangular prisms
    horiz_elt = FiniteElement("DG", triangle, degree)
    vert_elt = FiniteElement("DG", interval, degree)
    elt = TensorProductElement(horiz_elt, vert_elt)
    V = FunctionSpace(mesh, elt)

    log(f"Number of degrees of freedom: {V.dim()}")
    log(f"Horizontal resolution: {horiz_res} m, Layers: {n_layers}, DG{degree}")

    # CG1 space for initial griddata interpolation, then project into DG V
    V_cg = FunctionSpace(mesh, "CG", 1)
    coords_cg = Function(VectorFunctionSpace(mesh, "CG", 1))
    coords_cg.interpolate(SpatialCoordinate(mesh))
    mesh_xy = coords_cg.dat.data_ro[:, :2]

    # Load spatial data fields — all in DG solution space V
    spatial = {}
    for name, filename in [
        ("elevation", "elevation_data.csv"),
        ("bedrock", "bedrock_data.csv"),
        ("shallow_layer", "shallow_layer.csv"),
        ("lower_layer", "lower_layer.csv"),
        ("water_table", "water_table.csv"),
        ("rainfall", "rainfall_data.csv"),
    ]:
        spatial[name] = load_spatial_field(
            V, V_cg, mesh_xy, data_dir / filename, name
        )

    x = SpatialCoordinate(mesh)
    elevation = spatial["elevation"]
    depth = Function(V, name="depth")
    depth.interpolate(conditional(elevation - x[2] < 0, 0.0, elevation - x[2]))

    # Soil curves — depth-dependent Haverkamp with three geological layers
    shallow = spatial["shallow_layer"]
    lower = spatial["lower_layer"]

    delta = 0.2
    I1 = 0.5 * (1 + tanh(delta * (shallow - depth)))
    I2 = 0.5 * (1 + tanh(delta * (lower - depth)))

    S_depth = max_value(1 / ((1 + 0.000071 * depth) ** 5.989), 0)
    K_depth = max_value((1 - depth / (58 + 1.02 * depth)) ** 3, 0)
    Ks_layer1 = 2.5e-05  # Shapperton
    Ks_layer2 = 1e-03     # Calivil
    Ks_layer3 = 5e-04     # Renmark
    Ks = Function(V, name="SaturatedConductivity")
    Ks.interpolate(
        K_depth * (Ks_layer1 * I1 + Ks_layer2 * (1 - I1) * I2 + Ks_layer3 * (1 - I2))
    )

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

    # Initial condition: hydrostatic from water table
    watertable = spatial["water_table"]
    h = Function(V, name="PressureHead")
    h.interpolate(depth - watertable)

    # Boundary conditions
    rainfall = spatial["rainfall"]
    rain_scaling = 0.14 * 3.171e-11  # fraction entering ground × mm/y to m/s

    richards_bcs = {
        "bottom": {"flux": 0},
        "top": {"flux": rain_scaling * rainfall},
        SIDE_BC_ID: {"flux": -(h - (depth - watertable))},
    }

    # Solver setup
    use_ramp = dt_init is not None
    dt_current = dt_init if use_ramp else dt_value
    dt = Constant(dt_current)
    solver_parameters, solver_kwargs = get_solver(solver)

    if use_ramp:
        log(f"Time stepper: BackwardEuler, dt_init = {dt_init} s, "
            f"dt_max = {dt_max} s, growth = {dt_growth}")
    else:
        log(f"Time stepper: BackwardEuler, dt = {dt_value} s, steps = {steps}")
    log(f"Solver: {solver}")
    log(f"Solver parameters: {solver_parameters}")
    if solver_kwargs:
        log(f"Solver kwargs: {solver_kwargs}")

    # --- Diagnostics ---
    solver_parameters_extra = {
        "snes_converged_reason": None,
        "ksp_converged_reason": None,
    }
    if not profile:
        solver_parameters_extra.update({
            "snes_view": None,
            "snes_monitor": None,
            "ksp_view_pmat": "::ascii_info",
        })

    # Solver-specific diagnostics
    if solver.startswith("vlumping"):
        solver_parameters_extra["lumped_mg_coarse_ksp_converged_reason"] = None
    elif solver == "boomeramg":
        solver_parameters_extra["pc_hypre_boomeramg_print_statistics"] = 3
    elif solver in ("gmg", "ngmres_gmg", "qn_gmg", "gamg", "gamg_asm"):
        solver_parameters_extra["mg_coarse_ksp_converged_reason"] = None

    richards_solver = RichardsSolver(
        h, soil_curves, dt,
        timestepper=BackwardEuler,
        bcs=richards_bcs,
        solver_parameters=solver_parameters,
        solver_parameters_extra=solver_parameters_extra,
        **solver_kwargs,
    )

    # Time stepping with diagnostics
    sim_time = 0.0
    total_nl_it = 0
    total_l_it = 0
    wall_times = []
    step = 0
    failed_steps = 0

    # Determine stopping criterion
    if t_final is not None:
        stop = lambda: sim_time >= t_final
        max_steps = 100000
    else:
        stop = lambda: step >= steps
        max_steps = steps

    # Save solution for rollback on failure
    h_backup = Function(V, name="PressureHead_backup")

    while not stop() and step < max_steps:
        h_backup.assign(h)
        t0 = time_mod.perf_counter()

        try:
            richards_solver.solve()
        except Exception as e:
            # Solver failed — shrink dt and retry from backup
            failed_steps += 1
            dt_current *= dt_shrink
            if dt_current < 1.0:
                log(f"dt shrunk below 1 s ({dt_current:.2e}), giving up")
                break
            dt.assign(dt_current)
            h.assign(h_backup)
            log(f"Step {step + 1} FAILED ({e.__class__.__name__}), "
                f"shrinking dt to {dt_current:.1f} s")
            continue

        wall = time_mod.perf_counter() - t0
        wall_times.append(wall)
        sim_time += float(dt)
        step += 1

        snes = richards_solver.ts.stepper.solver.snes
        nl_it = snes.getIterationNumber()
        l_it = snes.getLinearSolveIterations()
        total_nl_it += nl_it
        total_l_it += l_it

        log(f"t = {sim_time / 86400:.2f} d | step {step}/{max_steps} | "
            f"dt = {float(dt):.1f} s | wall {wall:.2f} s | NL {nl_it} | L {l_it}")

        # Ramp up dt after successful step
        if use_ramp:
            dt_current = min(dt_current * dt_growth, dt_max)
            dt.assign(dt_current)

    mem_mb = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss / 1024
    if wall_times:
        log(f"Done | total NL {total_nl_it} | total L {total_l_it} | "
            f"mean wall/step {sum(wall_times) / len(wall_times):.2f} s | "
            f"peak RSS {mem_mb:.0f} MB | steps {step} | "
            f"failed {failed_steps} | sim_time {sim_time / 86400:.2f} d")
    else:
        log(f"FAILED — no successful steps | failed {failed_steps}")


if __name__ == "__main__":
    model(
        _ARGS.horiz_res, _ARGS.layers,
        degree=_ARGS.degree, dt_value=_ARGS.dt,
        steps=_ARGS.steps, solver=_ARGS.solver,
        refinement_levels=_ARGS.refinement_levels,
        data_dir=_ARGS.data_dir,
        dt_init=_ARGS.dt_init, dt_max=_ARGS.dt_max,
        dt_growth=_ARGS.dt_growth, dt_shrink=_ARGS.dt_shrink,
        t_final=_ARGS.t_final, profile=_ARGS.profile,
    )
