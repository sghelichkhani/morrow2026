"""Vauclin spatial convergence at t = 28 800 s.

Paper Fig. 5: the error is the L² norm of the difference between a DQ{p}
solution on a coarse mesh and a DQ2 reference solution on the finest
mesh, evaluated at t = 28 800 s.

The driver has two stages so that a long sweep survives a walltime kill
and the error assembly can be redone without re-solving:

``solve``
    Runs every entry of ``LEVELS`` plus ``REFERENCE`` and writes each
    final pressure head to ``results/convergence/dq{p}_{nx}x{ny}.h5``
    as a Firedrake ``CheckpointFile`` (mesh + field). A run whose
    checkpoint already exists is skipped unless ``--force`` is given.

``errors``
    Loads the reference and every coarse checkpoint, interpolates the
    coarse field onto the reference mesh, and assembles the L² error
    with Firedrake quadrature. Writes ``results/convergence.json`` in
    the schema ``plot_convergence.py`` expects.

Why the mesh levels nest. Every coarse cell count divides the reference
cell count (240 × 160), so each coarse cell is a union of reference
cells. A DQ{p} function restricted to a reference cell is then a single
polynomial of degree p, and the DQ2 interpolant on the reference mesh
reproduces it exactly for p ≤ 2. The error we assemble is therefore the
exact L² distance between the two discrete solutions, up to quadrature,
with no interpolation floor. That floor is what a scattered-point linear
interpolation would introduce: it is second order in the dof spacing and
would cap the measured DQ2 rate at 2.

Why the reference is the same degree. A DQ2 reference on a mesh twice as
fine as the finest coarse level has an error of roughly (1/2)^r of that
level, with r the true rate. For r ≈ 2.5 the finest pairwise rate carries
a bias of order 0.1 to 0.2 from this. The interior levels are unaffected.

All runs share the same time step (``dt_value`` in ``vauclin_2d.run``),
so the temporal discretisation error is common to coarse and reference
solutions and cancels to leading order in the difference.
"""
from __future__ import annotations

import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import save_json  # noqa: E402
sys.path.insert(0, str(Path(__file__).resolve().parent))


T_TARGET = 28_800.0  # 8 h — paper's convergence target

# Finest DQ2 level; every coarse level must divide these cell counts.
REFERENCE = {"nodes_x": 240, "nodes_y": 160, "degree": 2}

# Cell counts across (x). With Lx:Ly = 3:2 the cell count down (y) is
# 2/3 of this, and both must divide the reference counts. These are
# the seven admissible values between dx = 0.25 m and dx = 0.025 m.
NESTED_NX = (12, 15, 24, 30, 48, 60, 120)
DEGREES = (0, 1, 2)

# Quick local sweep for testing the two-stage pipeline: reference
# 60 × 40 and the three coarse levels that divide it.
QUICK_REFERENCE = {"nodes_x": 60, "nodes_y": 40, "degree": 2}
QUICK_NX = (12, 15, 30)


def _levels(nx_values, degrees):
    """Expand cell counts × degrees into run specs, coarsest first."""
    return [{"nodes_x": nx, "nodes_y": (2 * nx) // 3, "degree": p}
            for p in degrees for nx in nx_values]


LEVELS = _levels(NESTED_NX, DEGREES)

RESULTS = Path(__file__).parent / "results"
CHECKPOINT_DIR = RESULTS / "convergence"
FIELD_NAME = "PressureHead"
MESH_NAME = "mesh"


def _tag(spec) -> str:
    return f"dq{spec['degree']}_{spec['nodes_x']}x{spec['nodes_y']}"


def _checkpoint_path(spec) -> Path:
    return CHECKPOINT_DIR / f"{_tag(spec)}.h5"


def _meta_path(spec) -> Path:
    return CHECKPOINT_DIR / f"{_tag(spec)}.json"


def _rank() -> int:
    from mpi4py import MPI
    return MPI.COMM_WORLD.Get_rank()


def _log(msg: str):
    if _rank() == 0:
        print(msg, flush=True)


def _check_nesting(reference, levels):
    """Refuse a sweep whose coarse levels do not nest in the reference.

    Non-nested levels would silently reintroduce an interpolation error
    in the ``errors`` stage, which is the whole thing this driver exists
    to avoid.
    """
    for spec in levels:
        for key in ("nodes_x", "nodes_y"):
            if reference[key] % spec[key] != 0:
                raise ValueError(
                    f"level {spec} does not nest in reference {reference}: "
                    f"{reference[key]} is not a multiple of {spec[key]} ({key})")


def stage_solve(reference, levels, t_final, force: bool):
    """Solve every spec and checkpoint the final pressure head."""
    from firedrake import CheckpointFile
    from firedrake.exceptions import ConvergenceError
    from vauclin_2d import run

    CHECKPOINT_DIR.mkdir(parents=True, exist_ok=True)
    for spec in [reference, *levels]:
        path = _checkpoint_path(spec)
        if path.exists() and not force:
            _log(f"skip {spec}: {path.name} exists")
            continue
        _log(f"solve {spec}")
        t0 = time.time()
        try:
            res = run(nodes_x=spec["nodes_x"], nodes_y=spec["nodes_y"],
                      degree=spec["degree"], t_final=t_final,
                      snapshot_times=())
        except ConvergenceError as exc:
            # A level whose Newton iteration diverges (seen for DQ2 on
            # the coarsest mesh) must not take the rest of the sweep
            # down with it. Record the failure and carry on; the
            # errors stage skips levels without a checkpoint. The
            # exception is raised collectively on every rank, so
            # catching it here keeps the ranks in step.
            wall = time.time() - t0
            _log(f"  DIVERGED after {wall:.1f}s: {str(exc).splitlines()[0]}")
            if _rank() == 0:
                save_json(_meta_path(spec), {
                    **spec, "failed": str(exc).splitlines()[0],
                    "wall_seconds": wall,
                })
            continue
        wall = time.time() - t0
        h = res["h_function"]
        # The mesh is created with name "mesh" inside run(); the field
        # is written under a fixed name so the errors stage can load it
        # without knowing anything about the run.
        with CheckpointFile(str(path), "w") as f:
            f.save_mesh(res["mesh_object"])
            f.save_function(h, name=FIELD_NAME)
        if _rank() == 0:
            save_json(_meta_path(spec), {
                **spec, "t_final": float(res["final"]["t"]),
                "wall_seconds": wall,
                "mass_balance": res["mass_balance"],
            })
        _log(f"  wall = {wall:.1f}s  -> {path.name}")


def _load(spec):
    """Load (mesh, h) from a checkpoint, on COMM_WORLD."""
    from firedrake import CheckpointFile
    with CheckpointFile(str(_checkpoint_path(spec)), "r") as f:
        mesh = f.load_mesh(MESH_NAME)
        h = f.load_function(mesh, FIELD_NAME)
    return mesh, h


def stage_errors(reference, levels):
    """Assemble the L² error of each level against the reference."""
    import json
    from firedrake import Function, errornorm, norm

    _check_nesting(reference, levels)
    _log(f"reference: {reference}")
    ref_mesh, h_ref = _load(reference)
    V_ref = h_ref.function_space()
    ref_norm = norm(h_ref)
    ref_meta = json.loads(_meta_path(reference).read_text())
    # Domain width from the benchmark definition, for dx = Lx / nx.
    import gwassess
    Lx = float(gwassess.VauclinRichardsSolution2D().Lx)

    entries = []
    for spec in levels:
        path = _checkpoint_path(spec)
        if not path.exists():
            _log(f"missing {path.name}; skipping {spec} "
                 f"(diverged or not yet solved)")
            continue
        _, h_c = _load(spec)
        # Cross-mesh interpolation: evaluate the coarse field at the
        # reference dof points and build the DQ2 interpolant there.
        # Because the meshes nest, the coarse field is a single
        # polynomial of degree ≤ 2 on every reference cell, so this
        # interpolant equals the coarse field exactly.
        h_on_ref = Function(V_ref).interpolate(h_c)
        # Exactness check: the L² norm of the coarse field must be the
        # same on its own mesh and after interpolation. A mismatch
        # beyond round-off means the levels do not nest or the
        # interpolation was not exact, and the error below would be
        # contaminated.
        coarse_norm = norm(h_c)
        interp_rel = abs(norm(h_on_ref) - coarse_norm) / coarse_norm
        if interp_rel > 1e-10:
            raise RuntimeError(
                f"{_tag(spec)}: interpolation onto the reference mesh "
                f"changed the norm by {interp_rel:.2e}; not exact")
        err = errornorm(h_ref, h_on_ref)
        meta = json.loads(_meta_path(spec).read_text())
        dx = Lx / spec["nodes_x"]
        _log(f"  {_tag(spec):>14}  dx={dx:.4f}  l2_err={err:.3e}  "
             f"rel={err / ref_norm:.3e}  wall={meta['wall_seconds']:.0f}s")
        entries.append({
            **spec,
            "dx": float(dx),
            "l2_error": float(err),
            "l2_reference": float(ref_norm),
            "wall_seconds": meta["wall_seconds"],
            "mass_balance": meta.get("mass_balance"),
            "interpolation_norm_mismatch": float(interp_rel),
        })

    payload = {
        "t_target": T_TARGET,
        "error_method": "firedrake cross-mesh interpolation onto the "
                        "reference mesh (nested levels, exact) + errornorm",
        "reference": {**reference, "wall_seconds": ref_meta["wall_seconds"]},
        "entries": entries,
    }
    if _rank() == 0:
        out = RESULTS / "convergence.json"
        save_json(out, payload)
        print(f"wrote {out}")


def main():
    import argparse
    p = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    p.add_argument("--stage", choices=("solve", "errors", "all"),
                   default="all")
    p.add_argument("--quick", action="store_true",
                   help="Small nested sweep (reference 60x40) for testing "
                        "the pipeline on a laptop.")
    p.add_argument("--t-final", type=float, default=T_TARGET,
                   help="Override the end time (testing only; the paper "
                        "figure uses 28800 s).")
    p.add_argument("--degrees", type=int, nargs="+", default=list(DEGREES))
    p.add_argument("--force", action="store_true",
                   help="Re-solve even if a checkpoint exists.")
    args = p.parse_args()

    if args.quick:
        reference, levels = QUICK_REFERENCE, _levels(QUICK_NX, args.degrees)
    else:
        reference, levels = REFERENCE, _levels(NESTED_NX, args.degrees)
    _check_nesting(reference, levels)

    if args.stage in ("solve", "all"):
        stage_solve(reference, levels, args.t_final, args.force)
    if args.stage in ("errors", "all"):
        stage_errors(reference, levels)


if __name__ == "__main__":
    main()
