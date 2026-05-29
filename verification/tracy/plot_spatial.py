"""Plot Tracy 2D and 3D spatial convergence side-by-side.

Reads `results/spatial_2d.json` and `results/spatial_3d.json` and produces
a single two-panel figure for §3.1 of the manuscript:

- ../../figures/Tracy/spatial_congergence.pdf   (spelling matches paper)
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
from matplotlib.lines import Line2D
from matplotlib.ticker import FixedLocator, ScalarFormatter

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


def _plot_panel(ax, json_path, ref_xrange, tag, title):
    if not json_path.exists():
        print(f"skip {json_path.name}: missing")
        return False
    data = load_json(json_path)["cases"]

    for name, case in data.items():
        levels = [e for e in case["levels"] if "l2error_h" in e]
        if not levels:
            continue
        dxs = np.array([e["dx"] for e in levels])
        err = np.array([e["l2error_h"] / e["l2anal_h"] for e in levels])
        p = case["degree"]
        rate = _convergence(dxs, err)
        line, = ax.loglog(dxs, err, "o-", label=f"DQ{p}")

        x_ref = dxs[-1]
        y_ref = err[-1]
        x = np.array(ref_xrange)
        y = y_ref * (x / x_ref) ** (p + 1)
        ax.loglog(x, y, "k--", alpha=0.5)

        # Annotate the fitted rate on top of the last interval (between
        # the two finest meshes, where the slope is measured).
        x_mid = np.sqrt(dxs[-1] * dxs[-2])
        y_mid = np.sqrt(err[-1] * err[-2])
        ax.annotate(f"{rate:.2f}", xy=(x_mid, y_mid),
                    xytext=(0, 6), textcoords="offset points",
                    ha="center", va="bottom", fontsize=19,
                    color=line.get_color())

    ax.set_xlabel(r"$\Delta x$ (m)")
    ax.set_title(title, fontsize=15, pad=18,
                 bbox=dict(boxstyle="round,pad=0.3",
                 facecolor="lightyellow", edgecolor="black"))
    # Add 5e-2 and 5e-1 as labelled ticks alongside the decade marks.
    ax.xaxis.set_major_locator(FixedLocator([1e-2, 5e-2, 1e-1, 5e-1]))
    ax.xaxis.set_major_formatter(ScalarFormatter())
    ax.grid(True, which="both", alpha=0.3)
    ax.text(0.08, 0.92, tag, transform=ax.transAxes,
            ha="center", va="center", fontsize=20, color="black",
            bbox=dict(boxstyle="circle,pad=0.2", facecolor="lightgray",
                      edgecolor="black"))
    return True


def plot_combined():
    fig, axes = plt.subplots(1, 2, figsize=(12, 5), sharey=True)
    _plot_panel(axes[0], RESULTS / "spatial_2d.json",
                ref_xrange=(2e-2, 6e-1), tag="A", title="2D")
    _plot_panel(axes[1], RESULTS / "spatial_3d.json",
                ref_xrange=(4.35e-2, 6e-1), tag="B", title="3D")
    axes[0].set_ylabel(r"Relative $L^2$ error in $h$")
    handles, labels = axes[0].get_legend_handles_labels()
    # Single proxy entry for the dashed theoretical-rate reference lines.
    handles.append(Line2D([], [], color="black", linestyle="--", alpha=0.5))
    labels.append("theory")
    leg = fig.legend(handles, labels, loc="upper center", ncol=2,
                     fontsize=14, bbox_to_anchor=(0.535, 1.06),
                     framealpha=1.0, edgecolor="black")
    leg.get_frame().set_facecolor("white")
    fig.tight_layout()
    fig.subplots_adjust(wspace=0.02, top=0.9)
    out = OUT / "spatial_congergence.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    plot_combined()
