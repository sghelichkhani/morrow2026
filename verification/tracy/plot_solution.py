"""Plot the Tracy 2D steady-state snapshot."""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import griddata

plt.rcParams.update({'font.size': 12})
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman"]

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT  # noqa: E402


HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "Tracy"
OUT.mkdir(parents=True, exist_ok=True)


def _regrid(x, y, z, L, n=200):
    xi = np.linspace(0, L, n)
    yi = np.linspace(0, L, n)
    XI, YI = np.meshgrid(xi, yi)
    Z = griddata((x, y), z, (XI, YI), method="linear")
    return XI, YI, Z


def main():
    path = HERE / "results" / "solution_2d.npz"
    if not path.exists():
        print(f"missing {path} — run run_solution.py first")
        return
    d = np.load(path)
    L = float(d["L"])

    fig, axes = plt.subplots(1, 3, figsize=(13, 4), sharey=True)

    XI, YI, H_num  = _regrid(d["x"], d["y"], d["h_num"],  L)
    _,  _,  H_anal = _regrid(d["x"], d["y"], d["h_anal"], L)
    _,  _,  Th_num = _regrid(d["x"], d["y"], d["theta_num"], L)

    im0 = axes[0].pcolormesh(XI, YI, H_num, shading="nearest", cmap="viridis", edgecolor='face')
    axes[0].set_title(r"Numerical $h$ (m)")
    fig.colorbar(im0, ax=axes[0], shrink=0.8)

    im1 = axes[1].pcolormesh(XI, YI, H_anal, shading="nearest", cmap="viridis", edgecolor='face')
    axes[1].set_title(r"Analytical $h$ (m)")
    fig.colorbar(im1, ax=axes[1], shrink=0.8)

    im2 = axes[2].pcolormesh(XI, YI, Th_num, shading="nearest", cmap="Blues", edgecolor='face')
    axes[2].set_title(r"Numerical $\theta$")
    fig.colorbar(im2, ax=axes[2], shrink=0.8)

    for ax in axes:
        ax.set_xlabel("x (m)")
        ax.set_aspect("equal")
    axes[0].set_ylabel("y (m)")

    #fig.suptitle(f"Tracy 2D steady state (t = {float(d['t']):.2e} s)")
    fig.tight_layout()
    out = OUT / "solution.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
