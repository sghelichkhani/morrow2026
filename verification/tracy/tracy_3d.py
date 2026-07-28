"""Tracy (2006) 3D spatial convergence test on extruded cube.

Convergence study against Tracy's 3D analytical solution for the Richards
equation with exponential (Gardner) soil on a cubic domain L x L x L.
Steps with BackwardEuler and a geometric dt ramp until the L^2 norm of
the pressure-head increment per step drops below ``steady_state_tolerance``
(or ``t_final`` is hit as a safety cap), then computes the L^2 error
against the analytical solution from gwassess.

This is a longtest intended for Gadi: the finer meshes produce large 3D
problems (e.g. 101^3 DQ1 ~ 8M DOFs).

Reference:
    Tracy, F. T. (2006). Clean two- and three-dimensional analytical
    solutions of Richards' equation for testing numerical solvers.
    Water Resources Research, 42(8). doi:10.1029/2005WR004638

Usage:
    mpiexec -n 48 python tracy_3d.py --nodes 51 --degree 1
"""

from gadopt import *
import numpy as np
import gwassess


def model(nodes, degree=1, dt_value=5e4, t_final=5e6,
          steady_state_tolerance=1e-3):
    """Run Tracy 3D benchmark and return L2 errors.

    Args:
        nodes: Number of cells per spatial dimension.
        degree: DQ polynomial degree.
        dt_value: Initial time step in seconds.
        t_final: Upper cap on simulated time in seconds. The loop exits
            earlier if ``steady_state_tolerance`` is met; this is a
            safety net against a stalled convergence.
        steady_state_tolerance: L^2 norm of the per-step pressure-head
            increment ``||h - h_old||_L2`` (units: m * sqrt(m^3)) below
            which the solution is considered to have reached steady
            state.

    Returns:
        Tuple of (l2error_h, l2anal_h).
    """
    L = 15.24
    alpha = 0.25
    hr = -L
    theta_r = 0.15
    theta_s = 0.45
    Ks = 1.0e-05

    tracy = gwassess.TracyRichardsSolution3D(
        alpha=alpha, hr=hr, L=L,
        theta_r=theta_r, theta_s=theta_s, Ks=Ks,
    )

    soil_curve = ExponentialCurve(
        theta_r=theta_r, theta_s=theta_s,
        Ks=Ks, alpha=alpha, Ss=0.0,
    )

    mesh2d = RectangleMesh(nodes, nodes, L, L, quadrilateral=True)
    mesh = ExtrudedMesh(mesh2d, nodes, layer_height=L / nodes, name="mesh")
    mesh.cartesian = True  # G-ADOPT convention (tag geometry for the gravity term)
    X = SpatialCoordinate(mesh)

    V = FunctionSpace(mesh, "DQ", degree)
    log(f"Nodes: {nodes}, DQ{degree}, DOFs: {V.dim()}")

    boundary_ids = get_boundary_ids(mesh)
    h0_val = 1 - exp(alpha * hr)
    top_bc_expr = (1 / alpha) * ln(exp(alpha * hr) + h0_val * sin(pi * X[0] / L) * sin(pi * X[1] / L))

    richards_bcs = {
        boundary_ids.left: {"h": hr},
        boundary_ids.right: {"h": hr},
        boundary_ids.front: {"h": hr},
        boundary_ids.back: {"h": hr},
        "bottom": {"h": hr},
        "top": {"h": top_bc_expr},
    }

    t_offset = 200000.0
    V_coords = VectorFunctionSpace(mesh, "DQ", degree)
    coords = Function(V_coords).interpolate(as_vector([X[0], X[1], X[2]]))

    h = Function(V, name="PressureHead")
    h.dat.data[:] = [
        tracy.pressure_head_cartesian([c[0], c[1], c[2]], t_offset)
        for c in coords.dat.data
    ]
    h_old = Function(V, name="PressureHeadPrevious").assign(h)

    dt = Constant(dt_value)

    richards_solver = RichardsSolver(
        h, soil_curve, dt,
        timestepper=BackwardEuler,
        bcs=richards_bcs,
        solver_parameters='iterative',
        solver_parameters_extra={
            "snes_converged_reason": None,
            "ksp_converged_reason": None,
        },
    )

    dx_quad = dx(metadata={"quadrature_degree": 3})

    time = 0.0
    step = 0
    while time < t_final:
        h_old.assign(h)
        richards_solver.solve()
        time += float(dt)
        step += 1
        dt.assign(min(float(dt) * 1.05, t_final / 10))

        maxchange = np.sqrt(assemble((h - h_old)**2 * dx_quad))
        if step % 10 == 0:
            log(f"step {step} | t = {time:.0f} s | dt = {float(dt):.0f} s | "
                f"||h - h_old||_L2 = {maxchange:.3e}")
        if maxchange < steady_state_tolerance:
            log(f"Steady state reached after {step} steps "
                f"(||h - h_old||_L2 = {maxchange:.3e} < "
                f"{steady_state_tolerance:.1e}); exiting")
            break
    else:
        log(f"Reached t_final = {t_final:.1e} s without meeting "
            f"steady-state tolerance {steady_state_tolerance:.1e}")

    h_anal = Function(V, name="AnalyticalPressureHead")
    h_anal.dat.data[:] = [
        tracy.pressure_head_cartesian([c[0], c[1], c[2]], t_offset + time)
        for c in coords.dat.data
    ]

    l2_error = np.sqrt(assemble((h - h_anal)**2 * dx_quad))
    l2_anal = np.sqrt(assemble(h_anal**2 * dx_quad))

    log(f"L2 error: {l2_error:.6e} | L2 analytical: {l2_anal:.6e} | "
        f"Relative: {l2_error / l2_anal:.6e} | "
        f"dx = {L / nodes:.4f} | DOFs = {V.dim()}")

    return l2_error, l2_anal


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Tracy 3D Richards convergence test")
    parser.add_argument("--nodes", type=int, required=True)
    parser.add_argument("--degree", type=int, default=1)
    parser.add_argument("--dt", type=float, default=5e4)
    parser.add_argument("--t-final", type=float, default=5e6)
    parser.add_argument("--steady-state-tolerance", type=float, default=1e-3)
    args = parser.parse_args()

    model(args.nodes, degree=args.degree, dt_value=args.dt,
          t_final=args.t_final,
          steady_state_tolerance=args.steady_state_tolerance)
