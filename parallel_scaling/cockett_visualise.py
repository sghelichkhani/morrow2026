"""Cockett (2018) 3D box — high-resolution DQ2 run that writes VTK for rendering.

This is the *visualisation* sibling of ``cockett_3d.py``. The scaling
driver runs the same heterogeneous-infiltration box (2 x 2 x 2.6 m, sand /
loamy-sand van Genuchten soil) but writes nothing — it only times the
solve. Here we solve the same problem at the highest resolution we ran for
the scaling study (the ``large`` mesh, 240 x 240 x 312) and at degree 2,
then write snapshots so the moisture front can actually be rendered.

The point of degree 2 is to *see* the high-order field. Firedrake's VTK
writer is happy to take a DQ2 function, but rather than lean on
``target_continuity`` we make the output spaces explicit: the derived
fields (moisture content, hydraulic conductivity, pressure head) are
interpolated onto a continuous CG2 space and those CG2 functions are what
gets written. This mirrors the demo idiom
(``theta.interpolate(soil_curve.moisture_content(h))``), just with the
target being CG2 instead of the solve space, so ParaView receives genuine
continuous quadratic Lagrange cells.

Snapshots land on t = 0, 24, 48, 72 h, matching the four-panel figure the
small DQ0 verification run produces. The soil indicator is written once,
on a DQ0 space, so the soil-structure panel stays crisp (a sharp tanh
indicator on CG2 would ring).

Usage (Gadi, 8 nodes — see submit_cockett_visualise.pbs):
    mpiexec -np $PBS_NCPUS python cockett_visualise.py \
        --nx 240 --nz 312 --degree 2 --solver vlumping_inexact --dt 2400 \
        --output-dir /scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett_hires

Laptop smoke test (serial, tiny mesh, direct solve):
    PYTHONPATH=~/Workplace/g-adopt-worktrees/sghelichkhani/richardson \
        ~/Workplace/firedrake-2026-03-03/venv-firedrake/bin/python3 \
        cockett_visualise.py --nx 24 --nz 32 --degree 2 --solver direct \
        --output-dir results/cockett_hires_smoke
"""

if __name__ == "__main__":
    # Parse before importing Firedrake/PETSc, which consume sys.argv on
    # initialisation and emit spurious "unused options" warnings otherwise.
    import argparse
    import sys

    parser = argparse.ArgumentParser(description="Cockett 3D DQ2 visualisation run")
    parser.add_argument("--nx", type=int, default=240,
                        help="horizontal cells per side (large scaling mesh: 240)")
    parser.add_argument("--nz", type=int, default=312,
                        help="vertical layers (large scaling mesh: 312)")
    parser.add_argument("--degree", type=int, default=2,
                        help="DQ polynomial degree of the solve space")
    parser.add_argument("--dt", type=float, default=2400.0,
                        help="time step in seconds (2400 s = 108 steps to 72 h; "
                             "this is a visualisation, so we don't need the 600 s "
                             "resolution the scaling runs used)")
    parser.add_argument("--solver", type=str, default="vlumping_inexact",
                        help="solver preset from solvers/. vlumping_inexact is "
                             "the mesh-independent production preset and the "
                             "g-adopt auto-default for extruded Cartesian meshes "
                             "(cheap coarse solve, far fewer iterations than "
                             "bjacobi); 'direct' for tiny laptop meshes")
    parser.add_argument("--output-dir", type=str, default="results/cockett_hires",
                        help="directory for the PVD / VTU output")
    _ARGS = parser.parse_args()
    sys.argv = sys.argv[:1]

import time as time_mod
from pathlib import Path

from gadopt import (
    Constant, ExtrudedMesh, Function, FunctionSpace, PETSc, RectangleMesh,
    RichardsSolver, SpatialCoordinate, VTKFile, VanGenuchtenCurve,
    BackwardEuler, exp, get_boundary_ids, log, sin, tanh,
)


SNAPSHOT_TIMES_H = (0.0, 24.0, 48.0, 72.0)


def model(nx=240, nz=312, degree=2, dt_value=2400.0,
          solver="vlumping_inexact", output_dir="results/cockett_hires"):
    Lx, Ly, Lz = 2.0, 2.0, 2.6

    mesh2d = RectangleMesh(nx, nx, Lx, Ly, quadrilateral=True)
    mesh = ExtrudedMesh(mesh2d, nz, layer_height=Lz / nz)
    X = SpatialCoordinate(mesh)

    # Solve space: discontinuous, degree as requested (DQ2 by default).
    V = FunctionSpace(mesh, "DQ", degree)
    log(f"Cockett visualise: {nx}x{nx}x{nz} DQ{degree}, DOFs={V.dim()}")

    # Heterogeneous soil indicator (identical to cockett_3d.py / the demo).
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

    # --- Output spaces ---------------------------------------------------
    # The derived fields are interpolated onto a *continuous* CG2 space so
    # ParaView receives genuine quadratic Lagrange cells rather than a P1
    # collapse of the DQ2 solution. h itself is discontinuous, so we also
    # carry a CG2 copy for a clean continuous render of the pressure head.
    out_path = Path(output_dir)
    out_path.mkdir(parents=True, exist_ok=True)

    V_out = FunctionSpace(mesh, "CG", degree)
    h_out = Function(V_out, name="PressureHead")
    theta_out = Function(V_out, name="MoistureContent")
    K_out = Function(V_out, name="HydraulicConductivity")

    # Soil indicator on DQ0 — a sharp tanh would ring on CG2, and the
    # soil-structure panel wants crisp per-cell sand/loam blocks.
    V0 = FunctionSpace(mesh, "DQ", 0)
    indicator_fn = Function(V0, name="SoilIndicator")
    indicator_fn.interpolate(indicator_expr)
    VTKFile(str(out_path / "cockett_hires_soil.pvd")).write(indicator_fn, time=0.0)

    snap = VTKFile(str(out_path / "cockett_hires.pvd"))

    def dump(t):
        h_out.interpolate(h)
        theta_out.interpolate(soil_curve.moisture_content(h))
        K_out.interpolate(soil_curve.hydraulic_conductivity(h))
        snap.write(h_out, theta_out, K_out, time=t)
        PETSc.Sys.Print(f"snapshot at t = {t / 3600:.1f} h")

    # --- Solver ----------------------------------------------------------
    # bjacobi / vlumping_* / etc. come from the scaling-study presets;
    # 'direct' is handled by RichardsSolver's own string preset for tiny
    # laptop meshes.
    if solver == "direct":
        solver_parameters, solver_kwargs = "direct", {}
    else:
        from solvers import get_solver
        solver_parameters, solver_kwargs = get_solver(solver)
    log(f"Solver: {solver}")

    dt = Constant(dt_value)
    richards_solver = RichardsSolver(
        h, soil_curve, delta_t=dt,
        timestepper=BackwardEuler, bcs=richards_bcs,
        solver_parameters=solver_parameters,
        solver_parameters_extra={
            "snes_converged_reason": None,
            "ksp_converged_reason": None,
        },
        **solver_kwargs,
    )

    # --- Time loop -------------------------------------------------------
    targets = [t * 3600.0 for t in SNAPSHOT_TIMES_H]
    t_final = max(targets)
    if targets[0] == 0.0:
        dump(0.0)
        targets = targets[1:]

    time = 0.0
    step = 0
    next_target = targets.pop(0) if targets else None
    while time < t_final - 1e-9:
        step_dt = float(dt_value)
        if next_target is not None and time + step_dt > next_target:
            step_dt = next_target - time
        dt.assign(step_dt)

        t0 = time_mod.perf_counter()
        richards_solver.solve()
        wall = time_mod.perf_counter() - t0

        time += step_dt
        step += 1
        snes = richards_solver.ts.stepper.solver.snes
        log(f"t = {time:.1f} s | step {step} | wall {wall:.2f} s | "
            f"NL {snes.getIterationNumber()} | L {snes.getLinearSolveIterations()}")

        if next_target is not None and abs(time - next_target) < 1e-6:
            dump(time)
            next_target = targets.pop(0) if targets else None
            dt.assign(dt_value)

    PETSc.Sys.Print(f"Cockett visualise complete: {step} steps, "
                    f"t = {time / 3600:.1f} h, output in {out_path}")


if __name__ == "__main__":
    model(nx=_ARGS.nx, nz=_ARGS.nz, degree=_ARGS.degree, dt_value=_ARGS.dt,
          solver=_ARGS.solver, output_dir=_ARGS.output_dir)
