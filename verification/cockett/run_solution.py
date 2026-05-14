"""Cockett (2018) 3D infiltration benchmark — driver for §3.4 Fig. 1.

Reproduces the heterogeneous-soil infiltration test of Cockett, Heagy
& Haber (2018, doi:10.1016/j.cageo.2018.04.006) on a 2 x 2 x 2.6 m
extruded cube with a 20x20x26 DQ0 hex mesh. Writes VTK snapshots of
the moisture content at t = 0, 24, 48, 72 h plus a separate VTK with
the soil-indicator field for the soil-structure panel.

The companion ``plot_solution.py`` renders the soil structure and the
four moisture snapshots into ``figures/Cockett2018/cockett_2018.png``.

Mirrors the g-adopt demo
``demos/groundwater/3d_cockett/3d_cockett.py`` but extends t_final from
24 h to 72 h and writes snapshots at the paper's specific times.
"""
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

from gadopt import (  # noqa: E402
    Constant, DIRK22, ExtrudedMesh, Function, FunctionSpace, PETSc,
    RectangleMesh, RichardsSolver, SpatialCoordinate, VTKFile,
    VanGenuchtenCurve, exp, get_boundary_ids, log, sin, tanh,
)


HERE = Path(__file__).parent
OUT = HERE / "results"
OUT.mkdir(parents=True, exist_ok=True)


SNAPSHOT_TIMES_H = (0.0, 24.0, 48.0, 72.0)


def model(nx: int = 20, ny: int = 20, nz: int = 26,
          dt_value: float = 600.0):
    Lx, Ly, Lz = 2.0, 2.0, 2.6

    mesh2d = RectangleMesh(nx, ny, Lx, Ly, quadrilateral=True)
    mesh = ExtrudedMesh(mesh2d, nz, layer_height=Lz / nz)
    X = SpatialCoordinate(mesh)

    V = FunctionSpace(mesh, "DQ", 0)
    log(f"Cockett mesh: {nx}x{ny}x{nz} DQ0, DOFs={V.dim()}")

    # Heterogeneous soil indicator (same as g-adopt demo).
    r = [0.0729, 0.0885, 0.7984, 0.9430, 0.6837,
         0.1321, 0.7227, 0.1104, 0.1175, 0.6407]
    epsilon = 1 / 500
    indicator_expr = (sin(3 * (X[0] - r[0])) + sin(3 * (X[1] - r[1]))
                      + sin(3 * (X[2] - r[2])) + sin(3 * (X[0] - r[3]))
                      + sin(3 * (X[1] - r[4])) + sin(3 * (X[2] - r[5]))
                      + sin(3 * (X[0] - r[6])) + sin(3 * (X[1] - r[7]))
                      + sin(3 * (X[2] - r[8])))
    indicator_expr = 0.5 * (1 + tanh(indicator_expr / epsilon))

    soil_curve = VanGenuchtenCurve(
        theta_r=0.02 * indicator_expr + 0.035 * (1 - indicator_expr),
        theta_s=0.417 * indicator_expr + 0.401 * (1 - indicator_expr),
        Ks=5.82e-05 * indicator_expr + 1.69e-05 * (1 - indicator_expr),
        alpha=13.8 * indicator_expr + 11.5 * (1 - indicator_expr),
        n=1.592 * indicator_expr + 1.474 * (1 - indicator_expr),
        Ss=0,
    )

    boundary_ids = get_boundary_ids(mesh)
    top_bc, bottom_bc = -0.1, -0.3
    richards_bcs = {
        boundary_ids.left: {"flux": 0},
        boundary_ids.right: {"flux": 0},
        boundary_ids.back: {"flux": 0},
        boundary_ids.front: {"flux": 0},
        boundary_ids.bottom: {"h": bottom_bc},
        boundary_ids.top: {"h": top_bc},
    }

    h = Function(V, name="PressureHead")
    h.interpolate(0.2 * exp(5 * (X[2] - Lz)) - 0.3)
    theta = Function(V, name="MoistureContent")
    theta.interpolate(soil_curve.moisture_content(h))

    # Snapshot the soil indicator on the same DQ0 space so the
    # plotter can colour the soil-structure panel by sand vs loamy
    # sand.
    indicator_fn = Function(V, name="SoilIndicator")
    indicator_fn.interpolate(indicator_expr)
    VTKFile(str(OUT / "cockett_soil.pvd")).write(indicator_fn, time=0.0)

    dt = Constant(dt_value)
    t_final = max(SNAPSHOT_TIMES_H) * 3600.0
    richards_solver = RichardsSolver(
        h, soil_curve, delta_t=dt,
        timestepper=DIRK22, bcs=richards_bcs,
        solver_parameters="direct",
    )

    snapshot_writer = VTKFile(str(OUT / "cockett_snapshots.pvd"))
    # Write t = 0 snapshot.
    targets = [t * 3600.0 for t in SNAPSHOT_TIMES_H]
    if targets[0] == 0.0:
        snapshot_writer.write(h, theta, time=0.0)
        targets = targets[1:]

    time = 0.0
    step = 0
    next_target = targets.pop(0) if targets else None
    while time < t_final - 1e-9:
        # Clamp the last step before each snapshot so we land exactly.
        step_dt = float(dt)
        if next_target is not None and time + step_dt > next_target:
            step_dt = next_target - time
        dt.assign(step_dt)
        richards_solver.solve()
        time += step_dt
        step += 1

        if next_target is not None and abs(time - next_target) < 1e-6:
            theta.interpolate(soil_curve.moisture_content(h))
            snapshot_writer.write(h, theta, time=time)
            PETSc.Sys.Print(f"snapshot at t = {time/3600:.1f} h (step {step})")
            next_target = targets.pop(0) if targets else None
            dt.assign(dt_value)

    PETSc.Sys.Print(f"Cockett run complete: {step} steps, t = {time/3600:.1f} h")


if __name__ == "__main__":
    import argparse
    p = argparse.ArgumentParser()
    p.add_argument("--nx", type=int, default=20)
    p.add_argument("--ny", type=int, default=20)
    p.add_argument("--nz", type=int, default=26)
    p.add_argument("--dt", type=float, default=600.0)
    args = p.parse_args()
    model(nx=args.nx, ny=args.ny, nz=args.nz, dt_value=args.dt)
