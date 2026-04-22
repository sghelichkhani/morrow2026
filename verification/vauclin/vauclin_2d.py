"""Vauclin 2D Richards driver for §3.3 figures.

Extends the g-adopt ``tests/richards/vauclin_2d.py`` driver with:
  * explicit control over ``nodes_x``, ``nodes_y``, polynomial degree;
  * snapshot output at a user-supplied list of times;
  * the final pressure-head / moisture-content field returned for
    convergence comparisons.

All physical parameters follow ``gwassess.VauclinRichardsSolution2D``,
which in turn follows Vauclin, Khanji & Vachaud (1979) equation (1)
and (9).
"""
from __future__ import annotations

from dataclasses import dataclass
from typing import Iterable

import numpy as np
import gwassess
from gadopt import (
    Constant, DIRK22, Function, FunctionSpace, HaverkampCurve, Measure,
    RectangleMesh, RichardsSolver, SpatialCoordinate, VectorFunctionSpace,
    FacetNormal, VTKFile, as_vector, assemble, dot, dx, get_boundary_ids,
    grad, tanh,
)


@dataclass
class Snapshot:
    t: float
    x: np.ndarray
    y: np.ndarray
    h: np.ndarray
    theta: np.ndarray
    qx: np.ndarray
    qy: np.ndarray


def run(nodes_x: int, nodes_y: int, degree: int = 2,
        t_final: float | None = None,
        snapshot_times: Iterable[float] = (),
        dt_value: float = 10.0,
        write_pvd: bool = False) -> dict:
    """Run the Vauclin 2D benchmark.

    Returns a dict with ``snapshots`` (list of Snapshot instances
    converted to dict) and ``final`` (coords + h + theta at
    ``t_final``) plus the mass-balance diagnostic.
    """
    vauclin = gwassess.VauclinRichardsSolution2D()
    Lx, Ly = vauclin.Lx, vauclin.Ly
    if t_final is None:
        t_final = vauclin.SIMULATION_DURATION

    mesh = RectangleMesh(nodes_x, nodes_y, Lx, Ly,
                         quadrilateral=True, name="mesh")
    mesh.cartesian = True
    X = SpatialCoordinate(mesh)
    V = FunctionSpace(mesh, "DQ", degree)
    W = VectorFunctionSpace(mesh, "DQ", degree)

    soil_params = vauclin.get_soil_parameters()
    soil = HaverkampCurve(
        theta_r=soil_params["theta_r"], theta_s=soil_params["theta_s"],
        Ks=soil_params["Ks"], Ss=soil_params["Ss"],
        alpha=soil_params["alpha"], beta=soil_params["beta"],
        A=soil_params["A"], gamma=soil_params["gamma"],
    )

    water_table = vauclin.WATER_TABLE_HEIGHT
    h_ic = Function(V).interpolate(water_table - 1.001 * X[1])
    h = Function(V, name="PressureHead").interpolate(h_ic)
    h_old = Function(V).interpolate(h_ic)
    theta = Function(V, name="MoistureContent").interpolate(
        soil.moisture_content(h)
    )
    K = Function(V).interpolate(soil.relative_permeability(h))
    q = Function(W, name="VolumetricFlux")

    time_var = Constant(0.0)
    top_flux = tanh(0.000125 * time_var) * vauclin.INFILTRATION_RATE * (
        0.5 * (1 + tanh(10 * (X[0] + vauclin.INFILTRATION_WIDTH)))
        - 0.5 * (1 + tanh(10 * (X[0] - vauclin.INFILTRATION_WIDTH)))
    )

    bids = get_boundary_ids(mesh)
    bcs = {
        bids.left: {"flux": 0.0},
        bids.right: {"h": h_ic},
        bids.bottom: {"flux": 0.0},
        bids.top: {"flux": top_flux},
    }

    dt = Constant(dt_value)
    solver = RichardsSolver(
        h, soil, delta_t=dt, timestepper=DIRK22, bcs=bcs,
        solver_parameters="direct", quad_degree=5,
    )

    ds_mesh = Measure("ds", domain=mesh, metadata={"quadrature_degree": 5})
    dx_mesh = Measure("dx", domain=mesh, metadata={"quadrature_degree": 5})

    coord_space = VectorFunctionSpace(mesh, "DQ", degree)
    coords = Function(coord_space).interpolate(as_vector([X[0], X[1]]))
    xs = np.asarray(coords.dat.data[:, 0])
    ys = np.asarray(coords.dat.data[:, 1])

    pvd = VTKFile("results/vauclin_snapshots.pvd") if write_pvd else None
    initial_mass = assemble(theta * dx_mesh)

    snapshots: list[Snapshot] = []
    snapshot_times = sorted(snapshot_times)
    targets = list(snapshot_times)

    def _capture(t_val: float):
        K.interpolate(soil.relative_permeability((h + h_old) / 2))
        q.interpolate(-K * grad((h + h_old) / 2 + X[1]))
        snapshots.append(Snapshot(
            t=t_val, x=xs, y=ys,
            h=np.asarray(h.dat.data).copy(),
            theta=np.asarray(theta.dat.data).copy(),
            qx=np.asarray(q.dat.data[:, 0]).copy(),
            qy=np.asarray(q.dat.data[:, 1]).copy(),
        ))
        if pvd is not None:
            pvd.write(h, theta, q, time=t_val)

    if targets and targets[0] <= 0.0:
        _capture(0.0)
        targets.pop(0)

    t = 0.0
    external_flux = 0.0
    while t < t_final - 1e-9:
        step = min(float(dt), t_final - t)
        dt.assign(step)
        h_old.assign(h)
        time_var.assign(t)
        solver.solve()
        t += step
        theta.interpolate(soil.moisture_content(h))
        K.interpolate(soil.relative_permeability((h + h_old) / 2))
        q.interpolate(-K * grad((h + h_old) / 2 + X[1]))
        external_flux += assemble(step * dot(q, -FacetNormal(mesh)) * ds_mesh)

        while targets and t + 1e-6 >= targets[0]:
            _capture(targets.pop(0))

    final_mass = assemble(theta * dx_mesh)
    mass_balance = (final_mass - initial_mass) / external_flux \
        if external_flux != 0 else 0.0

    return {
        "snapshots": [s.__dict__ for s in snapshots],
        "final": {"x": xs, "y": ys,
                  "h": np.asarray(h.dat.data).copy(),
                  "theta": np.asarray(theta.dat.data).copy(),
                  "t": t},
        "mass_balance": float(mass_balance),
        "external_flux": float(external_flux),
        "mesh": {"nodes_x": nodes_x, "nodes_y": nodes_y,
                  "Lx": Lx, "Ly": Ly, "degree": degree},
    }
