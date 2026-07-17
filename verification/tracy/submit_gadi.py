"""Generate and submit PBS jobs for the Tracy spatial sweep on Gadi.

One PBS job per (dim, degree, nodes) case so each gets its own walltime
and rank budget and the whole sweep runs in parallel on the queue. Each
job invokes ``run_spatial_{2,3}d.py --degree D --nodes N`` and writes
``results/gadi/<dim>d/<case>/result.json``. After the queue drains,
``merge_spatial.py`` rolls everything into ``spatial_{2,3}d.json`` for
the plotter.

The sweep ranges below are the ones that reproduce the Morrow et al.
2026 spatial convergence figure (panels a, b). DQ2 in 3D caps at
nodes=301 (paper's leftmost point, ~730M DOFs).

Usage on Gadi:

    cd /scratch/xd2/sg8812/morrow2026/verification/tracy
    python3 submit_gadi.py --dry-run                  # inspect everything
    python3 submit_gadi.py --dim 2                    # 2D sweep
    python3 submit_gadi.py --dim 3                    # 3D sweep
    python3 submit_gadi.py --degree 2 --nodes 301     # one case only
    python3 submit_gadi.py --only-missing             # skip done cases
"""
from __future__ import annotations

import argparse
import math
import subprocess
from pathlib import Path

# -- Gadi paths, kept consistent with parallel_scaling/submit_jobs.py -----
PBS_PROJECT = "xd2"
PBS_QUEUE = "normalsr"
CPUS_PER_NODE = 104
STORAGE = "scratch/xd2+gdata/xd2+gdata/fp50"

GADOPT_PATH = "/scratch/xd2/sg8812/g-adopt-worktrees/sghelichkhani/richardson"
LOCAL_PACKAGES = "/scratch/xd2/sg8812/local/firedrake-main-20260401/lib/python3.11/site-packages"
IRKSOME_OVERRIDE = "/scratch/xd2/sg8812/Irksome"
FIREDRAKE_OVERRIDE = "/scratch/xd2/sg8812/firedrake-override"
GWASSESS_PATH = "/scratch/xd2/sg8812/gwassess"
MORROW_REPO = "/scratch/xd2/sg8812/morrow2026"
TRACY_DIR = f"{MORROW_REPO}/verification/tracy"

# -- Sweep definition ------------------------------------------------------
# Per-degree level lists. Reaches the same Δx range as the paper figure.
SWEEP_2D = {
    0: [34, 51, 76, 101, 151, 201, 301, 401, 508],
    1: [34, 51, 76, 101, 151, 201, 301, 401, 508],
    2: [34, 51, 76, 101, 151, 201, 301, 401, 508],
}
# 3D capped per degree by feasibility: DQ0 cheapest, DQ2 the heaviest.
SWEEP_3D = {
    0: [26, 51, 76, 101, 151, 201, 301],
    1: [26, 51, 76, 101, 151, 201, 301],
    2: [26, 51, 76, 101, 151, 201, 301],
}

# Target DOFs-per-rank for sizing. Firedrake's lower floor is ~50k; we
# pick 100k as a safe operating point so AMG setup time doesn't dominate.
TARGET_DOFS_PER_RANK = 100_000
# Hard cap so a single absurd case doesn't take down the whole queue.
MAX_NODES_PER_JOB = 32


def case_dofs(dim: int, degree: int, nodes: int) -> int:
    """Approximate global DOF count for the DG-quad/hex Tracy mesh."""
    return (nodes ** dim) * ((degree + 1) ** dim)


def size_job(dim: int, degree: int, nodes: int) -> tuple[int, int, str]:
    """Pick (gadi_nodes, mpi_ranks, walltime) for a case."""
    dofs = case_dofs(dim, degree, nodes)
    target_ranks = max(1, dofs // TARGET_DOFS_PER_RANK)
    gadi_nodes = max(1, math.ceil(target_ranks / CPUS_PER_NODE))
    gadi_nodes = min(gadi_nodes, MAX_NODES_PER_JOB)
    reserved_ranks = gadi_nodes * CPUS_PER_NODE
    # Don't oversubscribe tiny cases; ensure ~20 cells/rank on the
    # finest mesh dimension (Firedrake/PETSc partitioning floor).
    cells_floor_ranks = max(1, (nodes ** dim) // 20)
    mpi_ranks = max(1, min(reserved_ranks, target_ranks, cells_floor_ranks))
    # Walltime: Tracy needs a fixed-ish number of nonlinear steps to reach
    # steady state. Per-step cost scales with DOFs/rank. Generous safety
    # factor — failures from queue truncation are worse than minor waste.
    dofs_per_rank = dofs / mpi_ranks
    minutes = 15 + 0.0008 * dofs_per_rank          # ~80 min at 100k DOFs/rank
    if dim == 3:
        minutes *= 2                                # extra slack for 3D
    minutes = int(min(minutes, 6 * 60))             # cap at 6h
    walltime = f"{minutes // 60:02d}:{minutes % 60:02d}:00"
    return gadi_nodes, mpi_ranks, walltime


def case_dir(dim: int, degree: int, nodes: int) -> Path:
    name = f"specified_head_dq{degree}_n{nodes}"
    return Path(TRACY_DIR) / "results" / "gadi" / f"{dim}d" / name


def generate_pbs(dim: int, degree: int, nodes: int) -> Path:
    """Write the PBS script for a case and return its path."""
    gadi_nodes, mpi_ranks, walltime = size_job(dim, degree, nodes)
    ncpus = gadi_nodes * CPUS_PER_NODE
    mem_gb = gadi_nodes * 500
    out_dir = case_dir(dim, degree, nodes)
    # Use the local path on the submitting host (relative to repo) for
    # mkdir, then mirror it onto Gadi via the absolute TRACY_DIR string.
    here = Path(__file__).parent
    local_out = (here / "results" / "gadi" / f"{dim}d"
                 / f"specified_head_dq{degree}_n{nodes}")
    local_out.mkdir(parents=True, exist_ok=True)
    pbs_path = local_out / "job.pbs"
    stdout = out_dir / "stdout"
    stderr = out_dir / "stderr"
    result = out_dir / "result.json"
    driver = f"run_spatial_{dim}d.py"
    job_name = f"tr{dim}-dq{degree}-n{nodes}"

    script = f"""#!/bin/bash
#PBS -N {job_name}
#PBS -P {PBS_PROJECT}
#PBS -q {PBS_QUEUE}
#PBS -l walltime={walltime}
#PBS -l mem={mem_gb}GB
#PBS -l ncpus={ncpus}
#PBS -l jobfs=200GB
#PBS -l storage={STORAGE}
#PBS -l wd
#PBS -W umask=0022
#PBS -o {stdout}
#PBS -e {stderr}

source /etc/profile
module use /g/data/fp50/modules
module load firedrake/main-20260401

export PYTHONPATH="{GADOPT_PATH}":"{IRKSOME_OVERRIDE}":"{LOCAL_PACKAGES}":"{FIREDRAKE_OVERRIDE}":"{GWASSESS_PATH}":"{MORROW_REPO}":${{PYTHONPATH}}
export PYTHONDONTWRITEBYTECODE=1
export OMPI_MCA_io="ompio"
export OMP_NUM_THREADS=1
export MPLCONFIGDIR=$PBS_JOBFS/matplotlib

cd {TRACY_DIR}

echo "=== Tracy {dim}D | DQ{degree} | nodes={nodes} ==="
echo "Reserved: {gadi_nodes} node(s) ({ncpus} cpus)   MPI ranks: {mpi_ranks}"
echo "DOFs (approx): {case_dofs(dim, degree, nodes):,}"
echo "Walltime: {walltime}   Date: $(date)"
echo "=================================================="

mpiexec -np {mpi_ranks} python3 {driver} \\
    --degree {degree} --nodes {nodes} \\
    --output {result} 2>&1

echo "=== Job completed: $(date) ==="
"""
    pbs_path.write_text(script)
    return pbs_path


def iter_cases(dim: int | None, degree: int | None, nodes: int | None):
    sweeps = {2: SWEEP_2D, 3: SWEEP_3D}
    dims = [dim] if dim else [2, 3]
    for d in dims:
        sweep = sweeps[d]
        degrees = [degree] if degree is not None else sorted(sweep)
        for p in degrees:
            level_list = [nodes] if nodes is not None else sweep[p]
            for n in level_list:
                yield d, p, n


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dim", type=int, choices=[2, 3], default=None)
    ap.add_argument("--degree", type=int, default=None)
    ap.add_argument("--nodes", type=int, default=None)
    ap.add_argument("--dry-run", action="store_true",
                    help="Generate PBS scripts but do not qsub.")
    ap.add_argument("--only-missing", action="store_true",
                    help="Skip cases whose result.json already exists.")
    args = ap.parse_args()

    submitted = []
    skipped = []
    for d, p, n in iter_cases(args.dim, args.degree, args.nodes):
        result = (Path(__file__).parent / "results" / "gadi" / f"{d}d"
                  / f"specified_head_dq{p}_n{n}" / "result.json")
        if args.only_missing and result.exists():
            skipped.append((d, p, n))
            continue
        pbs = generate_pbs(d, p, n)
        gadi_nodes, mpi_ranks, walltime = size_job(d, p, n)
        line = (f"  {d}D DQ{p} n={n:<4d}  "
                f"DOFs={case_dofs(d,p,n):>12,}  "
                f"nodes={gadi_nodes:>2}  ranks={mpi_ranks:>4}  "
                f"walltime={walltime}  -> {pbs}")
        print(line)
        if not args.dry_run:
            r = subprocess.run(["qsub", str(pbs)], capture_output=True,
                               text=True)
            if r.returncode != 0:
                print(f"    qsub FAILED: {r.stderr.strip()}")
            else:
                print(f"    qsub: {r.stdout.strip()}")
        submitted.append((d, p, n))

    print(f"\n{'generated' if args.dry_run else 'submitted'} "
          f"{len(submitted)} job(s); skipped {len(skipped)}")


if __name__ == "__main__":
    main()
