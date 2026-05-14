#!/bin/bash
# PBS wrapper for the verification drivers on Gadi.
#
# Dispatches to one of the verification sweeps based on the CASE
# variable, passed via qsub -v CASE=<name>. Valid cases:
#
#   tracy_2d_dg2     Tracy 2D DG2 (specified_head_dg2 only).
#                    Merges into verification/tracy/results/spatial_2d.json.
#   tracy_3d         Tracy 3D full sweep (DG0 + DG1 + DG2).
#                    Merges into spatial_3d.json.
#   vauclin_paper    Vauclin convergence with the paper-spec 121x81
#                    DQ2 reference + extended coarse sweep. Overwrites
#                    convergence.json.
#
# Usage on Gadi:
#   cd /scratch/xd2/sg8812/morrow2026
#   qsub -v CASE=tracy_2d_dg2  verification/submit_gadi.sh
#   qsub -v CASE=tracy_3d      verification/submit_gadi.sh
#   qsub -v CASE=vauclin_paper verification/submit_gadi.sh

#PBS -P xd2
#PBS -q normalsr
#PBS -l ncpus=104
#PBS -l mem=480GB
#PBS -l jobfs=200GB
#PBS -l walltime=04:00:00
#PBS -l storage=scratch/xd2+gdata/xd2+gdata/fp50
#PBS -l wd
#PBS -j oe
#PBS -N richards_verification

set -euo pipefail

# Environment — module-based Firedrake plus user overrides for
# richardson g-adopt + Irksome + gwassess, matching the production
# setup in /scratch/xd2/sg8812/submit_longtest.sh.
source /etc/profile
module use /g/data/fp50/modules
module load firedrake/main-20260401

LOCAL=/scratch/xd2/sg8812/local/firedrake-main-20260401
RICHARDSON=/scratch/xd2/sg8812/g-adopt-worktrees/sghelichkhani/richardson
IRKSOME=/scratch/xd2/sg8812/Irksome
GWASSESS=/scratch/xd2/sg8812/gwassess

export PATH="${LOCAL}/bin:${PATH}"
export PYTHONPATH="${RICHARDSON}:${IRKSOME}:${GWASSESS}:${LOCAL}/lib/python3.11/site-packages:${PYTHONPATH:-}"
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1
export OMPI_MCA_io=ompio
export OMP_NUM_THREADS=1
export MPLCONFIGDIR=${PBS_JOBFS:-/tmp}/matplotlib

REPO=/scratch/xd2/sg8812/morrow2026
cd "${REPO}"

NCPUS="${PBS_NCPUS:-${NCPUS:-104}}"

echo "==== Gadi verification job ===="
echo "PBS_JOBID  = ${PBS_JOBID:-<interactive>}"
echo "PBS_NCPUS  = ${NCPUS}"
echo "CASE       = ${CASE:-<missing>}"
echo "Repo HEAD  = $(git rev-parse --short HEAD)"
echo "Started:    $(date -Is)"
echo

case "${CASE:-}" in
  tracy_2d_dg2)
    mpiexec -n "${NCPUS}" python3 verification/tracy/run_spatial_2d.py \
        --cases specified_head_dg2
    ;;
  tracy_3d)
    mpiexec -n "${NCPUS}" python3 verification/tracy/run_spatial_3d.py
    ;;
  vauclin_paper)
    mpiexec -n "${NCPUS}" python3 verification/vauclin/run_convergence.py \
        --paper-reference
    ;;
  *)
    echo "Unknown CASE='${CASE:-}'. Valid: tracy_2d_dg2, tracy_3d, vauclin_paper." >&2
    exit 64
    ;;
esac

echo "Finished:   $(date -Is)"
