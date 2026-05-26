"""Capture three pressure-head snapshots of Tracy's 2D benchmark.

Drives one Tracy 2D run from a near-IC analytical state to steady
state, dumping the pressure-head field at three target wall-clock
times (``t = 0, 5 x 10^4, 2.5 x 10^6 s``) into
``results/solution_2d.npz``. The companion ``plot_solution.py``
renders the three snapshots side by side for §3.1 Fig. 1.
"""
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

import numpy as np  # noqa: E402
import gwassess  # noqa: E402
from gadopt import (  # noqa: E402
    BackwardEuler, ExponentialCurve, Function, FunctionSpace, RectangleMesh,
    RichardsSolver, SpatialCoordinate, VectorFunctionSpace, Constant,
    as_vector, exp, get_boundary_ids, ln, pi, sin, VTKFile, PETSc,
)


# Times at which we want to record pressure-head snapshots, matching
# the paper caption. The first snapshot is the IC (which is the Tracy
# analytical at a small t_offset, indistinguishable from t = 0 within
# colourbar resolution); the last is effectively at steady state.
SNAPSHOT_TIMES = (0.0, 5.0e4, 2.5e6)

# The Tracy analytical is singular at t = 0, so the IC is set from
# t_offset > 0 (same convention as the g-adopt richards Tracy 2D test).
T_OFFSET = 2000.0

HERE = Path(__file__).parent
OUT = HERE / "results"
OUT.mkdir(parents=True, exist_ok=True)

def model(nodes: int = 201, degree: int = 1,
          snapshot_times=SNAPSHOT_TIMES):
    L = 15.24
    alpha = 0.25
    hr = -L
    theta_r, theta_s, Ks = 0.15, 0.45, 1e-5

    tracy = gwassess.TracyRichardsSolution2D(
        alpha=alpha, hr=hr, L=L,
        theta_r=theta_r, theta_s=theta_s, Ks=Ks,
    )
    soil = ExponentialCurve(theta_r=theta_r, theta_s=theta_s,
                            Ks=Ks, Ss=0.0, alpha=alpha)

    mesh = RectangleMesh(nodes, nodes, L, L, quadrilateral=True, name="mesh")
    mesh.cartesian = True
    X = SpatialCoordinate(mesh)
    V = FunctionSpace(mesh, "DQ", degree)

    bids = get_boundary_ids(mesh)
    h0_val = 1 - exp(alpha * hr)
    bcs = {
        bids.left: {"h": hr}, bids.right: {"h": hr}, bids.bottom: {"h": hr},
        bids.top: {"h": (1 / alpha) * ln(exp(alpha * hr)
                                         + h0_val * sin(pi * X[0] / L))},
    }

    V_coords = VectorFunctionSpace(mesh, "DQ", degree)
    coords = Function(V_coords).interpolate(as_vector([X[0], X[1]]))
    h = Function(V, name="PressureHead")
    h.dat.data[:] = [
        tracy.pressure_head_cartesian([xy[0], xy[1]], T_OFFSET,
                                       bc_type="specified_head")
        for xy in coords.dat.data
    ]

    snapshot_writer = VTKFile(str(OUT / "tracy_solution.pvd"))

    xs = np.asarray(coords.dat.data[:, 0])
    ys = np.asarray(coords.dat.data[:, 1])

    targets = sorted(float(s) for s in snapshot_times)
    snapshots: list[dict] = []
    if targets[0] == 0.0:
        snapshot_writer.write(h, time=0.0)
        targets = targets[1:]

    dt = Constant(min(5e3, targets[0] / 4) if targets else 5e4)
    solver = RichardsSolver(h, soil, delta_t=dt, timestepper=BackwardEuler,
                            bcs=bcs, solver_parameters="direct",
                            quad_degree=3, interior_penalty=0.5)

    time = 0.0
    t_final = 2.6e6
    step = 0
    next_target = targets.pop(0) if targets else None
    while time < t_final - 1e-9:
        # Clamp the last step before each snapshot so we land exactly.
        step_dt = float(dt)
        if next_target is not None and time + step_dt > next_target:
            step_dt = next_target - time
        dt.assign(step_dt)
        solver.solve()
        time += step_dt
        step += 1

        if next_target is not None and abs(time - next_target) < 1e-6:
            snapshot_writer.write(h, time=time)
            PETSc.Sys.Print(f"snapshot at t = {time:.1f} s (step {step})")
            next_target = targets.pop(0) if targets else None

    return dict(
        x=xs, y=ys, L=L,
        snapshots=snapshots,
        nodes=nodes, degree=degree,
    )


if __name__ == "__main__":
    import argparse
    p = argparse.ArgumentParser()
    p.add_argument("--nodes", type=int, default=201)
    p.add_argument("--degree", type=int, default=1)
    args = p.parse_args()
    data = model(args.nodes, args.degree)