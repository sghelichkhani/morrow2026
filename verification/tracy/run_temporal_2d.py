"""Tracy 2D temporal convergence sweep.

Fix a mesh fine enough that spatial error is negligible and march the
analytical IC at ``t_offset`` forward to a target time. Sweep over
``Δt`` and time integrators; the L² error at the final time is then a
clean estimate of the temporal truncation error. We expect
``O(Δt)`` for BackwardEuler and ``O(Δt²)`` for DIRK22 / CrankNicolson.

This experiment is not in the current g-adopt tree — we implement it
here so the Tracy temporal figure in §3.1 is reproducible.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402

import numpy as np  # noqa: E402
import gwassess  # noqa: E402
from gadopt import (  # noqa: E402
    BackwardEuler, CrankNicolson, DIRK22, ExponentialCurve, Function,
    FunctionSpace, RectangleMesh, RichardsSolver, SpatialCoordinate,
    VectorFunctionSpace, Constant, as_vector, assemble, dx, exp, get_boundary_ids,
    ln, pi, sin,
)


INTEGRATORS = {
    "BackwardEuler": (BackwardEuler, 1),
    "CrankNicolson": (CrankNicolson, 2),
    "DIRK22":        (DIRK22, 2),
}

# The paper's Fig. Temp (§3.1) is DQ2 on 301² up to t = 1e5 s. That is
# Gadi-only; see to-do-list.md item 2. Locally we use DQ1 at 201 which
# gives ~160k DOFs with L² spatial error ~5e-4, small enough to act as
# a floor when measuring temporal convergence down to ~1e-3.
#
# Important: the top BC in this driver is set to the Tracy STEADY
# STATE value (sin(pi x/L)), not the time-dependent analytical. The
# system therefore relaxes toward the steady state from the analytical
# IC at t_offset. Measuring L² error against `tracy.pressure_head_cartesian(t)`
# then records how well the integrator tracks that relaxation.
# t_offset and t_elapsed must be chosen so the solution is still
# transient at t_offset + t_elapsed, otherwise the error saturates at
# the spatial floor. The Tracy decay timescale is ~L²θ_s/Ks ~ 7e5 s
# with the parameters below, so t_offset=1e4 and t_elapsed=1e5 are
# both well inside the transient.
DEFAULT_NODES = 201
DEFAULT_DEGREE = 1

T_OFFSET = 1.0e4
T_ELAPSED = 1.0e5


def _model(integrator_cls, dt_value: float, nodes: int, degree: int):
    L = 15.24
    alpha = 0.25
    hr = -L
    theta_r = 0.15
    theta_s = 0.45
    Ks = 1.0e-5

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

    h0_val = 1 - exp(alpha * hr)
    bids = get_boundary_ids(mesh)
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

    dt = Constant(dt_value)
    solver = RichardsSolver(
        h, soil, delta_t=dt, timestepper=integrator_cls, bcs=bcs,
        solver_parameters="direct", quad_degree=3, interior_penalty=0.5,
    )

    t = 0.0
    n_steps = int(round(T_ELAPSED / dt_value))
    for _ in range(n_steps):
        solver.solve()
        t += dt_value

    h_anal = Function(V)
    h_anal.dat.data[:] = [
        tracy.pressure_head_cartesian([xy[0], xy[1]], T_OFFSET + t,
                                       bc_type="specified_head")
        for xy in coords.dat.data
    ]

    dxq = dx(metadata={"quadrature_degree": 3})
    err = float(np.sqrt(assemble((h - h_anal) ** 2 * dxq)))
    ref = float(np.sqrt(assemble(h_anal ** 2 * dxq)))
    return err, ref, t, n_steps


def run(nodes=DEFAULT_NODES, degree=DEFAULT_DEGREE,
        dts=(2.0e4, 1.0e4, 5.0e3, 2.5e3),
        output: Path | None = None) -> dict:
    payload = {
        "mesh": {"nodes": nodes, "degree": degree,
                  "t_offset": T_OFFSET, "t_elapsed": T_ELAPSED},
        "integrators": {},
    }
    for name, (cls, order) in INTEGRATORS.items():
        entries = []
        payload["integrators"][name] = {
            "expected_order": order, "dts": entries,
        }
        for dt_val in dts:
            t0 = time.time()
            try:
                err, ref, t_reached, n_steps = _model(cls, dt_val, nodes, degree)
            except Exception as exc:  # noqa: BLE001
                wall = time.time() - t0
                print(f"[{name}] dt={dt_val:.3e} FAILED: {exc!r} wall={wall:.1f}s")
                entries.append({
                    "dt": float(dt_val), "error": repr(exc),
                    "wall_seconds": wall,
                })
                if output is not None:
                    save_json(output, payload)
                continue
            wall = time.time() - t0
            rel = err / ref
            print(f"[{name}] dt={dt_val:.3e} n_steps={n_steps} "
                  f"rel_err={rel:.3e} wall={wall:.1f}s")
            entries.append({
                "dt": float(dt_val), "n_steps": int(n_steps),
                "t_reached": float(t_reached),
                "l2error_h": err, "l2anal_h": ref,
                "wall_seconds": wall,
            })
            if output is not None:
                save_json(output, payload)
    return payload


if __name__ == "__main__":
    import argparse
    p = argparse.ArgumentParser()
    p.add_argument("--nodes", type=int, default=DEFAULT_NODES)
    p.add_argument("--degree", type=int, default=DEFAULT_DEGREE)
    p.add_argument("--output", default="results/temporal_2d.json")
    args = p.parse_args()

    out = Path(__file__).parent / args.output
    save_json(out, run(nodes=args.nodes, degree=args.degree, output=out))
    print(f"wrote {out}")
