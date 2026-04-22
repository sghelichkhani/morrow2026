"""Plot Tracy 2D and 3D spatial convergence.

Reads `results/spatial_2d.json` and (optionally) `results/spatial_3d.json`
and produces the figures referenced from §3.1 of the manuscript:

- ../../figures/Tracy/2d_spatial_error.pdf
- ../../figures/Tracy/3d_spatial_congergence.pdf   (spelling matches paper)
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT, load_json  # noqa: E402


HERE = Path(__file__).parent
RESULTS = HERE / "results"
OUT = FIGURE_ROOT / "Tracy"
OUT.mkdir(parents=True, exist_ok=True)


def _convergence(xs: np.ndarray, ys: np.ndarray) -> float:
    """Least-squares fit of a power law on log-log."""
    logx, logy = np.log(xs), np.log(ys)
    slope, _ = np.polyfit(logx, logy, 1)
    return float(slope)


def plot_2d():
    path = RESULTS / "spatial_2d.json"
    if not path.exists():
        print(f"skip 2D: missing {path}")
        return
    data = load_json(path)["cases"]

    fig, axes = plt.subplots(1, 2, figsize=(10, 4.2), sharey=True)
    bc_axes = {"specified_head": axes[0], "no_flux": axes[1]}
    for name, case in data.items():
        # Filter out failed entries (those carry an 'error' key instead
        # of l2error_h) so partial JSONs still plot.
        levels = [e for e in case["levels"] if "l2error_h" in e]
        if not levels:
            continue
        dxs = np.array([e["dx"] for e in levels])
        err = np.array([e["l2error_h"] / e["l2anal_h"] for e in levels])
        ax = bc_axes[case["bc_type"]]
        p = case["degree"]
        rate = _convergence(dxs, err)
        ax.loglog(dxs, err, "o-", label=f"DQ{p} (fitted rate {rate:.2f})")

    # theoretical reference lines
    for ax in axes.flat:
        xs = np.array([1e-2, 1e-1])
        for p, style in [(1, "k--"), (2, "k:"), (3, "k-.")]:
            ax.loglog(xs, 1e-2 * (xs / xs[0]) ** p, style,
                      alpha=0.5, label=f"$O(h^{p})$")
        ax.set_xlabel(r"$\Delta x$ (m)")
        ax.grid(True, which="both", alpha=0.3)
        ax.legend(fontsize=8, loc="best")
    axes[0].set_ylabel(r"Relative $L^2$ error in $h$")
    axes[0].set_title("Specified head")
    axes[1].set_title("No flux")
    fig.suptitle("Tracy (2006) 2D spatial convergence")
    fig.tight_layout()
    out = OUT / "2d_spatial_error.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


def plot_3d():
    path = RESULTS / "spatial_3d.json"
    if not path.exists():
        print(f"skip 3D: missing {path}")
        return
    data = load_json(path)["cases"]

    fig, ax = plt.subplots(1, 1, figsize=(5, 4.2))
    for name, case in data.items():
        levels = [e for e in case["levels"] if "l2error_h" in e]
        if not levels:
            continue
        dxs = np.array([e["dx"] for e in levels])
        err = np.array([e["l2error_h"] / e["l2anal_h"] for e in levels])
        p = case["degree"]
        rate = _convergence(dxs, err)
        ax.loglog(dxs, err, "o-", label=f"DQ{p} (fitted rate {rate:.2f})")
    xs = np.array([0.05, 0.3])
    for p, style in [(1, "k--"), (2, "k:")]:
        ax.loglog(xs, 5e-2 * (xs / xs[0]) ** p, style,
                  alpha=0.5, label=f"$O(h^{p})$")
    ax.set_xlabel(r"$\Delta x$ (m)")
    ax.set_ylabel(r"Relative $L^2$ error in $h$")
    ax.set_title("Tracy (2006) 3D spatial convergence")
    ax.grid(True, which="both", alpha=0.3)
    ax.legend(fontsize=8)
    fig.tight_layout()
    out = OUT / "3d_spatial_congergence.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    plot_2d()
    plot_3d()
