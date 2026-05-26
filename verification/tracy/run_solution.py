"""Write ParaView snapshots of Tracy's 2D benchmark toward steady state.

Drives one Tracy 2D run from a near-IC analytical state to steady
state and writes the solution at three target wall-clock times
(``t = 0, 5 x 10^4, 2.5 x 10^6 s``) into ``results/solution.pvd`` as a
VTK time series for ParaView. At each snapshot we output three fields:
the pressure head ``h``, the moisture content ``theta(h)``, and the
hydraulic conductivity ``K(h)``. The latter two are derived from the
exponential soil curve and re-interpolated before every write, so the
file shows directly how conductivity varies across the wetting front.
"""
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))

import gwassess  # noqa: E402
from gadopt import (  # noqa: E402
    BackwardEuler, ExponentialCurve, Function, FunctionSpace, RectangleMesh,
    RichardsSolver, SpatialCoordinate, VectorFunctionSpace, VTKFile, Constant,
    as_vector, exp, get_boundary_ids, ln, pi, sin,
)


# Times at which we want to record snapshots, matching the paper
# caption. The first snapshot is the IC (which is the Tracy analytical
# at a small t_offset, indistinguishable from t = 0 within colourbar
# resolution); the last is effectively at steady state.
SNAPSHOT_TIMES = (0.0, 5.0e4, 2.5e6)

# The Tracy analytical is singular at t = 0, so the IC is set from
# t_offset > 0 (same convention as the g-adopt richards Tracy 2D test).
T_OFFSET = 2000.0


def model(nodes: int = 201, degree: int = 1,
          snapshot_times=SNAPSHOT_TIMES,
          output: str = "results/solution.pvd"):
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

    # Derived fields for visualisation. These are re-interpolated from
    # the soil curve before each write so ParaView shows how theta and
    # K track the pressure head as the front advances.
    theta = Function(V, name="MoistureContent")
    K = Function(V, name="HydraulicConductivity")

    out_path = Path(output)
    if not out_path.is_absolute():
        out_path = Path(__file__).parent / out_path
    out_path.parent.mkdir(parents=True, exist_ok=True)
    vtk = VTKFile(str(out_path))

    def dump(t):
        theta.interpolate(soil.moisture_content(h))
        K.interpolate(soil.hydraulic_conductivity(h))
        vtk.write(h, theta, K, time=t)

    targets = sorted(float(s) for s in snapshot_times)
    if targets and targets[0] <= 0.0:
        dump(0.0)
        targets = targets[1:]

    dt = Constant(min(5e3, targets[0] / 4) if targets else 5e4)
    solver = RichardsSolver(h, soil, delta_t=dt, timestepper=BackwardEuler,
                            bcs=bcs, solver_parameters="direct",
                            quad_degree=3, interior_penalty=0.5)

    t = 0.0
    for target in targets:
        # Step until ``t`` reaches ``target``; clamp the final step so
        # the snapshot lands exactly on the requested time.
        while t < target - 1e-9:
            step_dt = min(float(dt), target - t)
            dt.assign(step_dt)
            solver.solve()
            t += step_dt
            # Grow ``dt`` between snapshots so the long t = 2.5e6 leg
            # does not crawl.
            dt.assign(min(float(dt) * 1.4, target / 6))
        dump(t)
        # Reset ``dt`` for the next leg so the integrator does not
        # overshoot at the start.
        dt.assign(min(5e3, max(target / 20, 100.0)))
        print(f"snapshot at t = {t:.3e} s written")

    return str(out_path)


if __name__ == "__main__":
    import argparse
    p = argparse.ArgumentParser()
    p.add_argument("--nodes", type=int, default=201)
    p.add_argument("--degree", type=int, default=1)
    p.add_argument("--output", default="results/solution.pvd")
    args = p.parse_args()
    out = model(args.nodes, args.degree, output=args.output)
    print(f"wrote {out}")
