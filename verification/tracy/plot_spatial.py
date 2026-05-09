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

plt.rcParams.update({'font.size': 18})
plt.rcParams["font.family"] = "serif"
plt.rcParams["font.serif"] = ["Times New Roman"]

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT, load_json  # noqa: E402


HERE = Path(__file__).parent
RESULTS = HERE / "results"
OUT = FIGURE_ROOT / "Tracy"
OUT.mkdir(parents=True, exist_ok=True)


def _convergence(xs: np.ndarray, ys: np.ndarray) -> float:
    """Slope from the last two points on a log-log scale."""
    if len(xs) < 2 or len(ys) < 2:
        raise ValueError("Need at least two data points to compute convergence.")

    logx = np.log(xs[-2:])
    logy = np.log(ys[-2:])
    slope, _ = np.polyfit(logx, logy, 1)
    return float(slope)


def plot_2d():
    path = RESULTS / "spatial_2d.json"
    if not path.exists():
        print(f"skip 2D: missing {path}")
        return
    data = load_json(path)["cases"]

    fig, ax = plt.subplots(figsize=(6, 5))
    for name, case in data.items():
        levels = [e for e in case["levels"] if "l2error_h" in e]
        if not levels:
            continue
        dxs = np.array([e["dx"] for e in levels])
        err = np.array([e["l2error_h"] / e["l2anal_h"] for e in levels])
        p = case["degree"]
        rate = _convergence(dxs, err)
        ax.loglog(dxs, err, "o-", label=f"DQ{p} (fitted rate {rate:.2f})")

        x_ref = dxs[-1]
        y_ref = err[-1]
        x = np.array([2e-2, 6e-1])
        y = y_ref * (x / x_ref)**(p+1)

        ax.loglog(x, y, 'k--', alpha=0.5)

    ax.set_xlabel(r"$\Delta x$ (m)")
    ax.set_ylabel(r"Relative $L^2$ error in $h$")
    #ax.set_title("Tracy (2006) 2D spatial convergence")
    fig.text(0.025, 0.95, '(a)', ha='left', va='top', fontsize=22)
    ax.grid(True, which="both", alpha=0.0)
    ax.legend(fontsize=12)
    fig.tight_layout()
    out = OUT / "2d_spatial_congergence.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


def plot_3d():
    path = RESULTS / "spatial_3d.json"
    if not path.exists():
        print(f"skip 3D: missing {path}")
        return
    data = load_json(path)["cases"]

    fig, ax = plt.subplots(figsize=(6, 5))
    for name, case in data.items():
        levels = [e for e in case["levels"] if "l2error_h" in e]
        if not levels:
            continue
        dxs = np.array([e["dx"] for e in levels])
        err = np.array([e["l2error_h"] / e["l2anal_h"] for e in levels])
        p = case["degree"]
        rate = _convergence(dxs, err)
        ax.loglog(dxs, err, "o-", label=f"DQ{p} (fitted rate {rate:.2f})")

        x_ref = dxs[-1]
        y_ref = err[-1]
        x = np.array([0.0435, 6e-1])
        y = y_ref * (x / x_ref)**(p+1)

        ax.loglog(x, y, 'k--', alpha=0.5)

    ax.set_xlabel(r"$\Delta x$ (m)")
    ax.set_ylabel(r"Relative $L^2$ error in $h$")
    #ax.set_title("Tracy (2006) 3D spatial convergence")
    fig.text(0.025, 0.95, '(b)', ha='left', va='top', fontsize=22)
    ax.grid(True, which="both", alpha=0.0)
    ax.legend(fontsize=12)
    fig.tight_layout()
    out = OUT / "3d_spatial_congergence.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    plot_2d()
    plot_3d()
