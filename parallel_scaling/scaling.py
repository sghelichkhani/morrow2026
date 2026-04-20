"""Weak-scaling case definitions for Cockett 3D Richards benchmark.

Each case targets ~18M DOFs per node (48 CPUs) using DQ1 on an extruded
quadrilateral mesh, matching the paper's setup.

DQ1 on a hex has 8 DOFs per element, so we need nx*nx*nz ≈ 2.25M * nodes.
"""

import re
from pathlib import Path

import numpy as np

# Mesh resolution for each node count, targeting ~18M DOFs/node with DQ1.
cases = {
    1: {
        "cores": 48,
        "nx": 120,
        "nz": 156,  # 120*120*156*8 ≈ 17.97M
    },
    2: {
        "cores": 96,
        "nx": 151,
        "nz": 196,  # 151*151*196*8 ≈ 35.73M
    },
    4: {
        "cores": 192,
        "nx": 190,
        "nz": 247,  # 190*190*247*8 ≈ 71.31M
    },
    8: {
        "cores": 384,
        "nx": 240,
        "nz": 312,  # 240*240*312*8 ≈ 143.83M
    },
    16: {
        "cores": 768,
        "nx": 302,
        "nz": 393,  # 302*302*393*8 ≈ 286.81M
    },
    32: {
        "cores": 1536,
        "nx": 381,
        "nz": 495,  # 381*381*495*8 ≈ 574.97M
    },
}

solver_presets = (
    # PC strategies
    "gmg", "boomeramg", "gamg_asm", "vlumping", "gamg", "bjacobi", "sor",
    # SNES variants
    "ngmres_gmg", "qn_gmg",
)


def get_data(case, solver, scale, base_path=None):
    """Parse output file and return iteration metrics for a given run."""
    base_path = base_path or Path("results")
    output_path = base_path / case / solver / f"{scale}.out"

    if not output_path.exists():
        raise FileNotFoundError(
            f"Output for case={case}, solver={solver}, scale={scale} not found"
        )

    linear_iterations = []

    with open(output_path) as f:
        for line in f:
            if m := re.match(
                r"\s+Linear \S+ solve converged due to \S+ iterations (\d+)",
                line,
            ):
                linear_iterations.append(int(m.group(1)))

    iters = np.array(linear_iterations)
    return {
        "mean_linear_iterations": float(np.mean(iters)) if len(iters) else 0.0,
        "total_linear_iterations": int(np.sum(iters)) if len(iters) else 0,
    }
