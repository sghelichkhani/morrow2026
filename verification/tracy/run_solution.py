"""Snapshot the Tracy 2D steady-state solution for §3.1 Figure 1.

Drives one Tracy 2D run to steady state and dumps h_num, h_anal, θ_num
on a structured grid into ``results/solution_2d.npz``; the companion
``plot_solution.py`` turns that into ``../../figures/Tracy/solution.pdf``.
"""
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402

import numpy as np  # noqa: E402
import gwassess  # noqa: E402
from gadopt import (  # noqa: E402
    BackwardEuler, ExponentialCurve, Function, FunctionSpace, RectangleMesh,
    RichardsSolver, SpatialCoordinate, VectorFunctionSpace, Constant,
    as_vector, exp, get_boundary_ids, ln, pi, sin,
)


def model(nodes: int = 101, degree: int = 2, t_final: float = 2.5e6):
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
    t_offset = 2000.0
    h = Function(V, name="PressureHead")
    h.dat.data[:] = [
        tracy.pressure_head_cartesian([xy[0], xy[1]], t_offset,
                                       bc_type="specified_head")
        for xy in coords.dat.data
    ]

    dt = Constant(5e4)
    solver = RichardsSolver(h, soil, delta_t=dt, timestepper=BackwardEuler,
                            bcs=bcs, solver_parameters="direct",
                            quad_degree=3, interior_penalty=0.5)
    t = 0.0
    while t < t_final:
        solver.solve()
        t += float(dt)
        dt.assign(min(float(dt) * 1.05, t_final / 10))

    theta_curve = soil.moisture_content
    theta_num = Function(V).interpolate(theta_curve(h))

    xs = np.asarray(coords.dat.data[:, 0])
    ys = np.asarray(coords.dat.data[:, 1])
    h_num = np.asarray(h.dat.data)
    th_num = np.asarray(theta_num.dat.data)

    # analytical reference at the final time
    h_anal_vals = np.array([
        tracy.pressure_head_cartesian([xy[0], xy[1]], t_offset + t,
                                       bc_type="specified_head")
        for xy in coords.dat.data
    ])
    th_anal_vals = np.array([tracy.moisture_content(hv) for hv in h_anal_vals])

    return dict(x=xs, y=ys, h_num=h_num, theta_num=th_num,
                h_anal=h_anal_vals, theta_anal=th_anal_vals,
                L=L, t=t_offset + t)


if __name__ == "__main__":
    import argparse
    p = argparse.ArgumentParser()
    p.add_argument("--nodes", type=int, default=201)
    # DQ2 locally trips SNES divergence at larger meshes (known, needs
    # MPI); DQ1 at 201 is visually indistinguishable from the analytical
    # reference and is what the paper figure uses.
    p.add_argument("--degree", type=int, default=1)
    p.add_argument("--t-final", type=float, default=2.5e6)
    args = p.parse_args()
    data = model(args.nodes, args.degree, args.t_final)
    out = Path(__file__).parent / "results" / "solution_2d.npz"
    out.parent.mkdir(parents=True, exist_ok=True)
    np.savez(out, **data)
    print(f"wrote {out}")
