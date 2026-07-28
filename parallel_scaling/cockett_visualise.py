"""Cockett (2018) 3D box — high-resolution run that writes VTK for rendering.

This is the *visualisation* sibling of ``cockett_3d.py``. The scaling
driver runs the same heterogeneous-infiltration box (2 x 2 x 2.6 m, sand /
loamy-sand van Genuchten soil) but writes nothing — it only times the
solve. Here we solve the same problem at full resolution and write a
regular sequence of moisture-content frames so the infiltration front can
be turned into a movie.

The production movie is the ``sweep`` scale, 120 x 120 x 156 (~18M DOF) at
degree 1, on one ``normalsr`` node with BoomerAMG (see
``submit_cockett_visualise.pbs`` for the cost-vs-resolution rationale —
full DQ2 at 240^3 is ~14 min/step, far too dear for a 108-step animation).
The mesh, degree and solver are all CLI arguments, so the same driver still
runs the DQ2 240^3 case if wanted; only the submission script picks the
operating point.

Whatever the degree, we make the output space explicit rather than leaning
on ``target_continuity``: the DQ solve field is interpolated onto a
continuous CG space of matching degree and that CG function is what gets
written. This mirrors the demo idiom
(``theta.interpolate(soil_curve.moisture_content(h))``), just with the
target being CG instead of the solve space, so ParaView receives genuine
continuous Lagrange cells rather than a P1 collapse of the DQ solution.

For the movie we write two fields per frame on a fixed step cadence
(``--output-every``): the moisture content and the pressure head. The
moisture content is what we colour by, but it is the *wrong* field to
contour an isosurface from — the box is heterogeneous (sand / loamy-sand),
so theta_s and theta_r differ between soil blocks and theta genuinely jumps
across every soil interface. A fixed-theta isosurface therefore fragments
along those interfaces no matter the output order. The pressure head is
continuous across soil boundaries (the physics is continuous in h), so we
also carry h: build the wetting-front isosurface from ``PressureHead`` and
colour it by ``MoistureContent``. Both go on the same continuous CG space so
ParaView receives one dataset per frame with both arrays. The soil indicator
is written once, on a DQ0 space, so the soil-structure context stays crisp
(a sharp tanh indicator on CG would ring).

Usage (Gadi, 1 node — see submit_cockett_visualise.pbs):
    mpiexec -np $PBS_NCPUS python cockett_visualise.py \
        --nx 120 --nz 156 --degree 1 --solver boomeramg --dt 2400 \
        --output-every 6 \
        --output-dir /scratch/xd2/sg8812/morrow2026/parallel_scaling/results/cockett_hires

Laptop smoke test (serial, tiny mesh, direct solve):
    PYTHONPATH=~/Workplace/g-adopt-worktrees/sghelichkhani/richardson \
        ~/Workplace/firedrake-2026-03-03/venv-firedrake/bin/python3 \
        cockett_visualise.py --nx 24 --nz 32 --degree 1 --solver direct \
        --output-dir results/cockett_hires_smoke
"""

if __name__ == "__main__":
    # Parse before importing Firedrake/PETSc, which consume sys.argv on
    # initialisation and emit spurious "unused options" warnings otherwise.
    import argparse
    import sys

    parser = argparse.ArgumentParser(description="Cockett 3D visualisation run")
    parser.add_argument("--nx", type=int, default=120,
                        help="horizontal cells per side (movie 'sweep' scale: 120)")
    parser.add_argument("--nz", type=int, default=156,
                        help="vertical layers (movie 'sweep' scale: 156)")
    parser.add_argument("--degree", type=int, default=1,
                        help="DQ polynomial degree of the solve space (movie: 1; "
                             "full DQ2 at 240^3 is far too dear for a 108-step run)")
    parser.add_argument("--dt", type=float, default=2400.0,
                        help="time step in seconds (2400 s = 108 steps to 72 h; "
                             "this is a visualisation, so we don't need the 600 s "
                             "resolution the scaling runs used)")
    parser.add_argument("--solver", type=str, default="boomeramg",
                        help="solver preset from solvers/. boomeramg is the most "
                             "mesh-independent Cockett preconditioner and best "
                             "suited to the large dt used here (vlumping's vertical "
                             "lumping is tuned to the small-dt regime and degrades "
                             "at dt=2400 s); 'direct' for tiny laptop meshes")
    parser.add_argument("--output-every", type=int, default=6,
                        help="write a moisture frame every N steps (with the "
                             "default dt=2400 s, every 6 steps = a frame every "
                             "4 h sim time = ~19 frames over 72 h)")
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


T_FINAL_H = 72.0  # simulate three days of infiltration


def model(nx=120, nz=156, degree=1, dt_value=2400.0, output_every=6,
          solver="boomeramg", output_dir="results/cockett_hires"):
    Lx, Ly, Lz = 2.0, 2.0, 2.6

    mesh2d = RectangleMesh(nx, nx, Lx, Ly, quadrilateral=True)
    mesh = ExtrudedMesh(mesh2d, nz, layer_height=Lz / nz)
    mesh.cartesian = True  # G-ADOPT convention (tag geometry for the gravity term)
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

    # --- Output space ----------------------------------------------------
    # Both fields are interpolated onto a *continuous* CG space (matching the
    # solve degree) so ParaView receives genuine Lagrange cells rather than a
    # P1 collapse of the DQ solution. We carry two fields per frame: the
    # moisture content to colour by, and the pressure head to contour the
    # wetting front from. theta jumps across the sand/loam soil blocks
    # (different theta_s/theta_r), so a fixed-theta isosurface fragments at
    # every interface; h is continuous across those blocks, so the front
    # isosurface is taken from h and coloured by theta.
    out_path = Path(output_dir)
    out_path.mkdir(parents=True, exist_ok=True)

    V_out = FunctionSpace(mesh, "CG", degree)
    theta_out = Function(V_out, name="MoistureContent")
    h_out = Function(V_out, name="PressureHead")

    # Soil indicator on DQ0 — a sharp tanh would ring on CG2, and the
    # soil-structure panel wants crisp per-cell sand/loam blocks.
    V0 = FunctionSpace(mesh, "DQ", 0)
    indicator_fn = Function(V0, name="SoilIndicator")
    indicator_fn.interpolate(indicator_expr)
    VTKFile(str(out_path / "cockett_hires_soil.pvd")).write(indicator_fn, time=0.0)

    snap = VTKFile(str(out_path / "cockett_hires.pvd"))

    def dump(t):
        theta_out.interpolate(soil_curve.moisture_content(h))
        h_out.interpolate(h)
        snap.write(theta_out, h_out, time=t)
        PETSc.Sys.Print(f"frame at t = {t / 3600:.2f} h")

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
    # Uniform dt to t_final, writing a moisture frame every `output_every`
    # steps (plus t = 0 and the final step) — a regular cadence for the
    # movie. With dt = 2400 s and output_every = 6 that's a frame every 4 h
    # of simulated time, ~19 frames over 72 h.
    t_final = T_FINAL_H * 3600.0
    n_steps = round(t_final / dt_value)
    dt.assign(dt_value)
    n_frames = len(range(0, n_steps, output_every)) + 1  # +1 for the final
    PETSc.Sys.Print(f"{n_steps} steps, frame every {output_every} steps "
                    f"(~{output_every * dt_value / 3600:.1f} h), ~{n_frames} frames")

    dump(0.0)
    time = 0.0
    for step in range(1, n_steps + 1):
        t0 = time_mod.perf_counter()
        richards_solver.solve()
        wall = time_mod.perf_counter() - t0

        time += dt_value
        snes = richards_solver.ts.stepper.solver.snes
        log(f"t = {time:.1f} s | step {step}/{n_steps} | wall {wall:.2f} s | "
            f"NL {snes.getIterationNumber()} | L {snes.getLinearSolveIterations()}")

        if step % output_every == 0 or step == n_steps:
            dump(time)

    PETSc.Sys.Print(f"Cockett visualise complete: {n_steps} steps, "
                    f"t = {time / 3600:.1f} h, output in {out_path}")


if __name__ == "__main__":
    model(nx=_ARGS.nx, nz=_ARGS.nz, degree=_ARGS.degree, dt_value=_ARGS.dt,
          output_every=_ARGS.output_every, solver=_ARGS.solver,
          output_dir=_ARGS.output_dir)
