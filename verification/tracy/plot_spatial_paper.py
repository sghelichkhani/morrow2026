"""Tracy spatial convergence — paper figure (2D + 3D side-by-side).

Reproduces the manuscript's two-panel layout: (a) 2D and (b) 3D relative
L2 error in h vs Delta x for DQ0/DQ1/DQ2, with fitted convergence rates
in the legend and dashed reference slopes for the expected p+1 order.

Panel (a) is plotted from whatever cases are present in
``results/spatial_2d.json`` — currently DQ2 only.
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

# Tab10 colours matched to the paper: DQ0 blue, DQ1 orange, DQ2 green.
COLOURS = {0: "tab:blue", 1: "tab:orange", 2: "tab:green"}


def _fit_rate(xs: np.ndarray, ys: np.ndarray) -> float:
    slope, _ = np.polyfit(np.log(xs), np.log(ys), 1)
    return float(slope)


def _gather(path: Path) -> dict[int, tuple[np.ndarray, np.ndarray]]:
    """Return {degree: (dx, rel_err_h)} for specified_head cases."""
    if not path.exists():
        return {}
    cases = load_json(path)["cases"]
    out: dict[int, tuple[np.ndarray, np.ndarray]] = {}
    for spec in cases.values():
        if spec.get("bc_type") != "specified_head":
            continue
        levels = [e for e in spec["levels"] if "l2error_h" in e]
        if not levels:
            continue
        dxs = np.array([e["dx"] for e in levels])
        err = np.array([e["l2error_h"] / e["l2anal_h"] for e in levels])
        order = np.argsort(dxs)
        out[spec["degree"]] = (dxs[order], err[order])
    return out


def _plot_panel(ax, data, label):
    for degree in sorted(data):
        dxs, err = data[degree]
        colour = COLOURS.get(degree, None)
        if len(dxs) >= 2:
            rate = _fit_rate(dxs, err)
            tag = f"DQ{degree} (fitted rate {rate:.2f})"
        else:
            tag = f"DQ{degree}"
        ax.loglog(dxs, err, "o-", color=colour, label=tag)
        # Dashed reference slope of order p+1 anchored at the finest dx.
        if len(dxs) >= 2:
            p = degree + 1
            ref = err[0] * (dxs / dxs[0]) ** p
            ax.loglog(dxs, ref, "--", color="grey", alpha=0.6, linewidth=1)
    ax.set_xlabel(r"$\Delta x$ (m)")
    ax.set_ylabel(r"Relative $L^2$ error in $h$")
    ax.grid(True, which="both", alpha=0.25)
    ax.legend(loc="lower right", fontsize=9, frameon=False)
    ax.text(0.02, 0.98, label, transform=ax.transAxes,
            ha="left", va="top", fontsize=12)


def main():
    data_2d = _gather(RESULTS / "spatial_2d.json")
    data_3d = _gather(RESULTS / "spatial_3d.json")

    fig, axes = plt.subplots(1, 2, figsize=(10, 4.2))
    _plot_panel(axes[0], data_2d, "(a)")
    _plot_panel(axes[1], data_3d, "(b)")
    fig.tight_layout()

    out = OUT / "spatial_convergence_paper.pdf"
    fig.savefig(out, bbox_inches="tight")
    fig.savefig(out.with_suffix(".png"), dpi=160, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
