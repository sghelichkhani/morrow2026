#!/bin/bash
# PBS wrapper for the verification drivers on Gadi.
#
# Dispatches to one of the verification sweeps based on the CASE
# variable, which must be passed via qsub -v CASE=<name>. Valid cases:
#
#   tracy_2d_dg2        Tracy 2D DG2 (specified_head_dg2 only). Merges
#                       into verification/tracy/results/spatial_2d.json.
#   tracy_3d            Tracy 3D full sweep (DG0 + DG1 + DG2), all
#                       levels in CASES. Merges into spatial_3d.json.
#   vauclin_paper       Vauclin convergence with the paper-spec
#                       121x81 DQ2 reference + extended coarse sweep
#                       (DQ0/1/2). Overwrites convergence.json.
#
# Usage:
#   qsub -v CASE=tracy_2d_dg2 verification/submit_gadi.sh
#   qsub -v CASE=tracy_3d     verification/submit_gadi.sh
#   qsub -v CASE=vauclin_paper verification/submit_gadi.sh
#
# Adjust the resource directives below per case if needed. Defaults
# target a single Sapphire Rapids node (normalsr queue, 104 CPUs,
# 500 GB) which is enough for every verification sweep listed above.

#PBS -P xd2
#PBS -q normalsr
#PBS -l ncpus=104
#PBS -l mem=480GB
#PBS -l walltime=04:00:00
#PBS -l storage=scratch/xd2+gdata/xd2+gdata/fp50
#PBS -l wd
#PBS -j oe
#PBS -N richards_verification

set -euo pipefail

# Environment: Firedrake venv + richardson g-adopt + gwassess paths.
VENV="/g/data/xd2/sg5878/firedrake-2026-03-03/venv-firedrake"
RICHARDSON="/g/data/xd2/sg5878/g-adopt-worktrees/richardson"
GWASSESS="/g/data/xd2/sg5878/gwassess"

source "${VENV}/bin/activate"
export PYTHONPATH="${RICHARDSON}:${GWASSESS}:${PYTHONPATH:-}"
export PYTHONUNBUFFERED=1

REPO="$(cd "$(dirname "$0")/.." && pwd -P)"
cd "${REPO}"

echo "==== Gadi verification job ===="
echo "PBS_JOBID  = ${PBS_JOBID:-<interactive>}"
echo "PBS_NODES  = ${PBS_NODEFILE:+$(wc -l < $PBS_NODEFILE)}"
echo "PBS_NCPUS  = ${PBS_NCPUS:-${NCPUS:-104}}"
echo "CASE       = ${CASE:-<missing>}"
echo "Working dir: $(pwd)"
echo "Started:    $(date -Is)"
echo

NCPUS="${PBS_NCPUS:-${NCPUS:-104}}"

case "${CASE:-}" in
  tracy_2d_dg2)
    # DG2 at 76/151/301 - each level uses progressively more cores.
    # Run all three under one MPI job; the driver iterates levels
    # internally. 104 cores is comfortable for nodes=301 DQ2 (~360k DOFs).
    mpiexec -n "${NCPUS}" python verification/tracy/run_spatial_2d.py \
        --cases specified_head_dg2
    ;;

  tracy_3d)
    # Full 3D sweep: DG0 + DG1 + DG2 up to nodes=101 (DG2 caps at 71).
    # The driver's merge fix preserves any pre-existing DG0/DG1 entries
    # at smaller meshes. Runs in MPI; each level reuses the same
    # communicator.
    mpiexec -n "${NCPUS}" python verification/tracy/run_spatial_3d.py
    ;;

  vauclin_paper)
    # 121x81 DQ2 reference + extended coarse sweep (DQ0/1/2 at finer
    # levels). One serial reference run takes ~40 min on a laptop, so
    # roughly 5-10 min on a Sapphire Rapids node with MPI.
    mpiexec -n "${NCPUS}" python verification/vauclin/run_convergence.py \
        --paper-reference
    ;;

  *)
    echo "Unknown CASE='${CASE:-}'. Valid: tracy_2d_dg2, tracy_3d, vauclin_paper." >&2
    exit 64
    ;;
esac

echo "Finished:   $(date -Is)"
