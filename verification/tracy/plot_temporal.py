"""Plot Tracy 2D temporal convergence.

Reads ``results/temporal_2d.json`` and produces
``../../figures/Tracy/2d_temporal_congergence.pdf`` (filename spelling
matches the manuscript's ``\\includegraphics``).
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT, load_json  # noqa: E402


HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "Tracy"
OUT.mkdir(parents=True, exist_ok=True)


def main():
    path = HERE / "results" / "temporal_2d.json"
    if not path.exists():
        print(f"missing {path} — run run_temporal_2d.py first")
        return
    data = load_json(path)

    # The paper's §3.1 temporal figure shows BackwardEuler only.
    # ImplicitMidpoint / CrankNicolson sweeps are still run and stored in
    # the JSON for future higher-order work; just not plotted here.
    PLOT_INTEGRATORS = ("BackwardEuler",)

    fig, ax = plt.subplots(figsize=(5, 4.2))
    for name, case in data["integrators"].items():
        if name not in PLOT_INTEGRATORS:
            continue
        entries = case["dts"]
        dts = np.array([e["dt"] for e in entries if "l2error_h" in e])
        rel = np.array([e["l2error_h"] / e["l2anal_h"]
                        for e in entries if "l2error_h" in e])
        order = case["expected_order"]
        slope, _ = np.polyfit(np.log(dts), np.log(rel), 1)
        ax.loglog(dts, rel, "o-",
                  label=f"{name} (order {order}, fit {slope:.2f})")

    # reference slopes anchored on the coarsest dt
    dts = np.array([d["dt"] for d in next(iter(data["integrators"].values()))["dts"]])
    dts = np.sort(dts)
    for p, style in [(1, "k--"), (2, "k:")]:
        ax.loglog(dts, (dts / dts[0]) ** p * 1e-3, style,
                  alpha=0.5, label=f"$O(\\Delta t^{p})$")

    ax.set_xlabel(r"$\Delta t$ (s)")
    ax.set_ylabel(r"Relative $L^2$ error in $h$")
    ax.set_title(
        f"Tracy 2D temporal convergence "
        f"(DQ{data['mesh']['degree']}, {data['mesh']['nodes']}²)"
    )
    ax.grid(True, which="both", alpha=0.3)
    ax.legend(fontsize=8)
    fig.tight_layout()
    out = OUT / "2d_temporal_congergence.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
