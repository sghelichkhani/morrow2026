"""Cockett et al. (2018) 3D heterogeneous infiltration benchmark.

Weak-scaling test for the Richards equation solver with different
preconditioner strategies. Domain is 2 x 2 x 2.6 m with van Genuchten
soil (sand / loamy sand heterogeneity), Dirichlet BCs on top and bottom,
no-flux on sides.

Reference:
    Cockett, R., Heagy, L. J., & Haber, E. (2018). Efficient 3D inversions
    using the Richards equation. Computers & Geosciences, 116, 91-102.

Usage:
    mpiexec -n 48 python cockett_3d.py --nx 120 --nz 150 --solver gmg --steps 100
"""

if __name__ == "__main__":
    # Parse arguments before importing Firedrake/PETSc, which consumes
    # sys.argv on initialisation and triggers spurious "unused options" warnings.
    import argparse
    import sys

    parser = argparse.ArgumentParser(description="Cockett 3D Richards scaling test")
    parser.add_argument("--nx", type=int, required=True)
    parser.add_argument("--nz", type=int, required=True)
    parser.add_argument("--degree", type=int, default=1)
    parser.add_argument("--dt", type=float, default=300.0)
    parser.add_argument("--steps", type=int, default=100)
    parser.add_argument("--solver", type=str, default="gamg")
    parser.add_argument("--refinement-levels", type=int, default=0)
    _ARGS = parser.parse_args()
    sys.argv = sys.argv[:1]  # Clear so PETSc doesn't see them

import resource
import time as time_mod

from gadopt import *
from solvers import get_solver


def model(nx, nz, degree=1, dt_value=300.0, steps=100,
          solver="gamg", refinement_levels=0):
    """Run Cockett 3D benchmark.

    Args:
        nx: Number of horizontal cells in each direction.
        nz: Number of vertical layers.
        degree: DG polynomial degree.
        dt_value: Time step in seconds.
        steps: Number of time steps.
        solver: Solver preset name from solvers/.
        refinement_levels: Mesh hierarchy levels for geometric MG.
    """
    Lx, Ly, Lz = 2.0, 2.0, 2.6

    if refinement_levels > 0:
        # Build coarse 2D mesh and refine horizontally. The nx argument
        # refers to the fine-level cell count; the coarse mesh has
        # nx / 2^refinement_levels cells per direction.
        nx_coarse = nx // (2 ** refinement_levels)
        if nx_coarse * (2 ** refinement_levels) != nx:
            raise ValueError(
                f"nx={nx} must be divisible by 2^refinement_levels="
                f"{2**refinement_levels}"
            )
        mesh2d_coarse = RectangleMesh(
            nx_coarse, nx_coarse, Lx, Ly, quadrilateral=True
        )
        mh2d = MeshHierarchy(mesh2d_coarse, refinement_levels)
        mh3d = ExtrudedMeshHierarchy(
            mh2d, Lz, base_layer=nz,
            refinement_ratio=1,  # horizontal-only coarsening (semicoarsening)
            extrusion_type="uniform",
        )
        mesh = mh3d[-1]
        # G-ADOPT convention: tag every hierarchy level as Cartesian so the
        # gravity term's upward_normal/is_cartesian resolves on coarse grids too.
        for m in mh3d:
            m.cartesian = True
    else:
        mesh2d = RectangleMesh(nx, nx, Lx, Ly, quadrilateral=True)
        mesh = ExtrudedMesh(mesh2d, nz, layer_height=Lz / nz)
        mesh.cartesian = True

    X = SpatialCoordinate(mesh)

    V = FunctionSpace(mesh, "DQ", degree)
    log(f"Number of degrees of freedom: {V.dim()}")
    log(f"Mesh: {nx}x{nx}x{nz}, DQ{degree}")

    # Heterogeneous soil indicator field (sharp transition)
    r = [0.0729, 0.0885, 0.7984, 0.9430, 0.6837,
         0.1321, 0.7227, 0.1104, 0.1175, 0.6407]
    epsilon = 1 / 500
    I = (sin(3 * (X[0] - r[0])) + sin(3 * (X[1] - r[1]))
         + sin(3 * (X[2] - r[2])) + sin(3 * (X[0] - r[3]))
         + sin(3 * (X[1] - r[4])) + sin(3 * (X[2] - r[5]))
         + sin(3 * (X[0] - r[6])) + sin(3 * (X[1] - r[7]))
         + sin(3 * (X[2] - r[8])))
    I = 0.5 * (1 + tanh(I / epsilon))

    soil_curves = VanGenuchtenCurve(
        theta_r=0.02 * I + 0.035 * (1 - I),
        theta_s=0.417 * I + 0.401 * (1 - I),
        Ks=5.82e-05 * I + 1.69e-05 * (1 - I),
        alpha=13.8 * I + 11.5 * (1 - I),
        n=1.592 * I + 1.474 * (1 - I),
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

    dt = Constant(dt_value)
    solver_parameters, solver_kwargs = get_solver(solver)
    log(f"Time stepper: BackwardEuler, dt = {dt_value} s, steps = {steps}")
    log(f"Solver: {solver}")
    log(f"Solver parameters: {solver_parameters}")
    if solver_kwargs:
        log(f"Solver kwargs: {solver_kwargs}")

    # --- Diagnostics ---
    # Full solver hierarchy dump (snes_view) prints after the first solve:
    # SNES→KSP→PC structure, GAMG complexity, MG level sizes, smoother configs.
    solver_parameters_extra = {
        "snes_view": None,
        "snes_monitor": None,
        "snes_converged_reason": None,
        "ksp_converged_reason": None,
        "ksp_view_pmat": "::ascii_info",
    }

    # Solver-specific diagnostics
    if solver.startswith("vlumping"):
        solver_parameters_extra["lumped_mg_coarse_ksp_converged_reason"] = None
    elif solver == "boomeramg":
        solver_parameters_extra["pc_hypre_boomeramg_print_statistics"] = 3
    elif solver in ("gmg", "ngmres_gmg", "qn_gmg", "gamg", "gamg_asm"):
        solver_parameters_extra["mg_coarse_ksp_converged_reason"] = None

    richards_solver = RichardsSolver(
        h, soil_curves, dt,
        timestepper=BackwardEuler,
        bcs=richards_bcs,
        solver_parameters=solver_parameters,
        solver_parameters_extra=solver_parameters_extra,
        **solver_kwargs,
    )

    sim_time = 0.0
    total_nl_it = 0
    total_l_it = 0
    wall_times = []

    for step in range(steps):
        t0 = time_mod.perf_counter()
        richards_solver.solve()
        wall = time_mod.perf_counter() - t0
        wall_times.append(wall)

        sim_time += float(dt)

        snes = richards_solver.ts.stepper.solver.snes
        nl_it = snes.getIterationNumber()
        l_it = snes.getLinearSolveIterations()
        total_nl_it += nl_it
        total_l_it += l_it

        log(f"t = {sim_time:.2f} s | step {step + 1}/{steps} | "
            f"wall {wall:.2f} s | NL {nl_it} | L {l_it}")

    mem_mb = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss / 1024
    log(f"Done | total NL {total_nl_it} | total L {total_l_it} | "
        f"mean wall/step {sum(wall_times) / len(wall_times):.2f} s | "
        f"peak RSS {mem_mb:.0f} MB")


if __name__ == "__main__":
    model(_ARGS.nx, _ARGS.nz, degree=_ARGS.degree, dt_value=_ARGS.dt,
          steps=_ARGS.steps, solver=_ARGS.solver,
          refinement_levels=_ARGS.refinement_levels)
