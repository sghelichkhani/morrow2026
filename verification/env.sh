# Source this file once per shell before running any verification driver:
#     source verification/env.sh
#
# Activates the Firedrake venv and prepends the richardson g-adopt
# worktree + gwassess to PYTHONPATH so `from gadopt import *` and
# `import gwassess` resolve to the versions used by the paper.

_RICHARDSON="${HOME}/Workplace/g-adopt-worktrees/sghelichkhani/richardson"
_GWASSESS="${HOME}/Workplace/gwassess"
_VENV="${HOME}/Workplace/firedrake-2026-03-03/venv-firedrake"

if [ -f "${_VENV}/bin/activate" ]; then
    # shellcheck disable=SC1091
    source "${_VENV}/bin/activate"
fi

export PYTHONPATH="${_RICHARDSON}:${_GWASSESS}:${PYTHONPATH:-}"

echo "Firedrake venv:  ${_VENV}"
echo "g-adopt (rich.): ${_RICHARDSON}"
echo "gwassess:        ${_GWASSESS}"
