"""Plot the three Tracy 2D pressure-head snapshots."""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
from scipy.interpolate import griddata

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT  # noqa: E402


HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "Tracy"
OUT.mkdir(parents=True, exist_ok=True)


def _regrid(x, y, z, L, n=300):
    xi = np.linspace(0, L, n)
    yi = np.linspace(0, L, n)
    XI, YI = np.meshgrid(xi, yi)
    Z = griddata((x, y), z, (XI, YI), method="linear")
    return XI, YI, Z


def _format_time(t):
    if t == 0.0:
        return "$t = 0$ s"
    exp_part = int(np.floor(np.log10(t)))
    coeff = t / 10 ** exp_part
    if abs(coeff - round(coeff)) < 1e-6:
        coeff = int(round(coeff))
    if coeff == 1:
        return rf"$t = 10^{{{exp_part}}}$ s"
    return rf"$t = {coeff} \times 10^{{{exp_part}}}$ s"


def main():
    path = HERE / "results" / "solution_2d.npz"
    if not path.exists():
        print(f"missing {path} — run run_solution.py first")
        return
    d = np.load(path)
    L = float(d["L"])
    times = np.asarray(d["times"])
    hs = np.asarray(d["h"])
    n_panels = len(times)

    fig, axes = plt.subplots(1, n_panels, figsize=(4.2 * n_panels, 4.0),
                              sharey=True)
    if n_panels == 1:
        axes = [axes]

    h_min = float(np.nanmin(hs))
    h_max = float(np.nanmax(hs))

    last_im = None
    for ax, t_val, h_arr in zip(axes, times, hs):
        XI, YI, H = _regrid(d["x"], d["y"], h_arr, L)
        last_im = ax.pcolormesh(XI, YI, H, shading="auto", cmap="viridis",
                                vmin=h_min, vmax=h_max, rasterized=True)
        ax.set_title(_format_time(t_val))
        ax.set_xlabel("x (m)")
        ax.set_aspect("equal")
    axes[0].set_ylabel("y (m)")

    cbar = fig.colorbar(last_im, ax=axes, shrink=0.85, pad=0.02)
    cbar.set_label(r"Pressure head $h$ (m)")

    out_png = OUT / "solution.png"
    fig.savefig(out_png, dpi=180, bbox_inches="tight")
    print(f"wrote {out_png}")
    # Also save a small vector PDF wrapper of the same rasterised art
    # so the manuscript can stay on .pdf if preferred.
    out_pdf = OUT / "solution.pdf"
    fig.savefig(out_pdf, dpi=180, bbox_inches="tight")
    print(f"wrote {out_pdf}")


if __name__ == "__main__":
    main()
