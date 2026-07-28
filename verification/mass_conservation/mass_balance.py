"""Mass-balance driver exposing stage_type.

Mirrors ``tests/richards/test_mass_balance.py`` but lets the caller
choose ``stage_type`` ("value" for the mass-conserving mixed form of
eq. (MoistureContentForm), "deriv" for the chain-rule / head-based
form of eq. (HeadBasedForm)) and the time integrator. Used by
``run_function_space.py`` (sweep Δx, "value" default) and
``run_equation_type.py`` (sweep Δt × stage_type × integrator).

The cumulative mass-loss metric is equation (NetMassLoss) in the
manuscript: sum over time steps of |ΔV_i − ∫ q_N dt|.
"""
from __future__ import annotations

from gadopt import (
    Constant, Function, FunctionSpace, HaverkampCurve, RichardsSolver,
    TestFunction, UnitSquareMesh, assemble, dx, get_boundary_ids,
)


def compute_mass_balance(*,
                         grid_points: int,
                         time_step: float,
                         t_final: float,
                         polynomial_degree: int,
                         time_integrator,
                         function_space: str,
                         stage_type: str = "value") -> float:
    mesh = UnitSquareMesh(grid_points, grid_points, quadrilateral=True)
    mesh.cartesian = True  # G-ADOPT convention (tag geometry for the gravity term)
    V = FunctionSpace(mesh, function_space, polynomial_degree)

    soil = HaverkampCurve(
        theta_r=0.05, theta_s=0.40, Ks=1e-5,
        alpha=0.5, beta=1.3, A=0.01, gamma=1.5, Ss=0.0,
    )

    bids = get_boundary_ids(mesh)
    inflow_rate = 1e-6
    bcs = {
        bids.left: {"flux": 0.0}, bids.right: {"flux": 0.0},
        bids.bottom: {"flux": 0.0}, bids.top: {"flux": inflow_rate},
    }

    h = Function(V).assign(-1.0)
    theta = Function(V).interpolate(soil.moisture_content(h))

    dt = Constant(time_step)
    solver = RichardsSolver(
        h, soil, delta_t=dt, timestepper=time_integrator,
        solver_parameters_extra={"snes_atol": 1e-15},
        bcs=bcs,
        timestepper_kwargs={"stage_type": stage_type},
    )

    initial_mass = assemble(theta * dx)
    previous_mass = initial_mass
    mass_error = 0.0

    t = 0.0
    while t < t_final:
        t += float(dt)
        solver.solve()
        theta.interpolate(soil.moisture_content(h))
        inflow = float(dt) * inflow_rate
        current_mass = assemble(theta * dx)
        mass_error += abs(abs(current_mass - previous_mass) - abs(inflow))
        previous_mass = current_mass

    return mass_error
