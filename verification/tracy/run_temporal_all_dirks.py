"""Tracy 2D temporal convergence: ImplicitMidpoint, DIRK22, RadauIIA(2).

Print-only sanity precursor to the higher-order rate study. Mirrors
run_temporal_2d.py but with Ss=1e-4 (instead of 0) so the specific-storage
term regularises the conservative-update Jacobian in the saturated zone
(h >= 0), where ExponentialCurve's moisture capacity dθ/dh = 0. Tracy's
analytical reference is for Ss=0, so the comparison floor includes a small
physical bias from Ss>0 — the *rate* of temporal convergence is still
meaningful as long as Δt is large enough that temporal error dominates.

This is NOT the canonical rate sweep: it compares against the analytical
solution and only prints, so the higher-order curves still flatten at the
spatial floor by small Δt. The clean rate study (a numerical RadauIIA(2)
reference at small Δt so spatial error and the Ss bias cancel) is the
two-panel design in verification-design.md / instructions.md; that is the
Gadi-only `run_temporal_sweep.py` that would write
`results/temporal_sweep.json`, the shape `plot_temporal.py` reads. Higher-
order tableaux are deferred to a follow-up paper (to-do-list.md P3).

Expected orders: ImplicitMidpoint=2, DIRK22=2, RadauIIA(2)=3.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

import numpy as np

# Goes through verification.common (like the other drivers) so the
# richardson worktree and gwassess land on sys.path from one place.
sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
import verification.common  # noqa: F401,E402

import gwassess  # noqa: E402
from gadopt import (  # noqa: E402
    Constant, ExponentialCurve, Function, FunctionSpace, RectangleMesh,
    RichardsSolver, SpatialCoordinate, VectorFunctionSpace,
    as_vector, assemble, dx, exp, get_boundary_ids, ln, pi, sin,
)
from gadopt import ImplicitMidpoint, DIRK22  # noqa: E402
from gadopt import RadauIIA as _RadauIIA  # noqa: E402


class RadauIIA2(_RadauIIA):
    """RadauIIA with 2 stages (order 3)."""
    tableau_parameter = 2


INTEGRATORS = {
    "ImplicitMidpoint": (ImplicitMidpoint, 2),
    "DIRK22":           (DIRK22, 2),
    "RadauIIA(2)":      (RadauIIA2, 3),
}

NODES = 201
DEGREE = 1
DTS = (5.0e3, 2.5e3, 1.25e3, 6.25e2, 3.125e2)
SS = 1.0e-4
T_OFFSET = 1.0e4
T_ELAPSED = 1.0e5


def _model(integrator_cls, dt_value: float):
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
                            Ks=Ks, Ss=SS, alpha=alpha)
    mesh = RectangleMesh(NODES, NODES, L, L, quadrilateral=True, name="mesh")
    mesh.cartesian = True
    X = SpatialCoordinate(mesh)
    V = FunctionSpace(mesh, "DQ", DEGREE)

    h0_val = 1 - exp(alpha * hr)
    bids = get_boundary_ids(mesh)
    bcs = {
        bids.left: {"h": hr}, bids.right: {"h": hr}, bids.bottom: {"h": hr},
        bids.top: {"h": (1 / alpha) * ln(exp(alpha * hr)
                                         + h0_val * sin(pi * X[0] / L))},
    }

    V_coords = VectorFunctionSpace(mesh, "DQ", DEGREE)
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
    return err, ref


def run() -> None:
    print(f"mesh: {NODES}² DQ{DEGREE}, Ss={SS}, "
          f"t_offset={T_OFFSET:.0e}, t_elapsed={T_ELAPSED:.0e}\n")
    for name, (cls, order) in INTEGRATORS.items():
        print(f"=== {name} (expected order {order}) ===", flush=True)
        results = []
        for dt in DTS:
            t0 = time.time()
            try:
                err, ref = _model(cls, dt)
            except Exception as exc:
                print(f"  dt={dt:8.2e} FAILED: {exc!r}  wall={time.time()-t0:.1f}s",
                      flush=True)
                results.append((dt, None))
                continue
            wall = time.time() - t0
            rel = err / ref
            results.append((dt, rel))
            print(f"  dt={dt:8.2e}  rel_err={rel:.3e}  wall={wall:.1f}s",
                  flush=True)
        print("  observed orders:", flush=True)
        for (dt0, e0), (dt1, e1) in zip(results[:-1], results[1:]):
            if e0 is None or e1 is None:
                continue
            p = float(np.log(e0 / e1) / np.log(dt0 / dt1))
            print(f"    dt {dt0:.2e} -> {dt1:.2e} : p = {p:.2f}", flush=True)
        print(flush=True)


if __name__ == "__main__":
    run()
