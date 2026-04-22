"""Plot Vauclin snapshots with streamlines, matching paper Fig. 4."""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import griddata

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT  # noqa: E402


HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "Vauclin1979"
OUT.mkdir(parents=True, exist_ok=True)


def _regrid(x, y, z, nx=241, ny=161):
    xi = np.linspace(x.min(), x.max(), nx)
    yi = np.linspace(y.min(), y.max(), ny)
    XI, YI = np.meshgrid(xi, yi)
    Z = griddata((x, y), z, (XI, YI), method="linear")
    return XI, YI, Z


def main():
    path = HERE / "results" / "solution.npz"
    if not path.exists():
        print(f"missing {path} — run run_solution.py first")
        return
    d = np.load(path)
    n = int(d["n_snapshots"])

    fig, axes = plt.subplots(1, n, figsize=(3.6 * n, 3.4), sharey=True)
    if n == 1:
        axes = [axes]
    for i, ax in enumerate(axes):
        x, y = d[f"x_{i}"], d[f"y_{i}"]
        th   = d[f"theta_{i}"]
        qx   = d[f"qx_{i}"]
        qy   = d[f"qy_{i}"]
        XI, YI, TH = _regrid(x, y, th)
        _, _, QX = _regrid(x, y, qx)
        _, _, QY = _regrid(x, y, qy)

        im = ax.pcolormesh(XI, YI, TH, shading="auto",
                           cmap="Blues", vmin=0.05, vmax=0.37)
        # Streamlines are meaningless when the flux is identically zero
        # (e.g. t=0 before the top recharge has kicked in).
        if np.nanmax(np.hypot(QX, QY)) > 1e-12:
            ax.streamplot(XI, YI, QX, QY, density=0.8, color="white",
                          linewidth=0.6, arrowsize=0.7)
        ax.set_title(f"t = {float(d[f't_{i}']) / 3600:.0f} h")
        ax.set_xlabel("x (m)")
        ax.set_aspect("equal")
    axes[0].set_ylabel("z (m)")
    fig.colorbar(im, ax=axes, shrink=0.8, label=r"$\theta$")
    out = OUT / "solution.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
