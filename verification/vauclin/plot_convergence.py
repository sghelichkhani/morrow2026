"""Plot Vauclin (1979) spatial convergence.

Single-panel companion to the Tracy spatial-convergence figure: relative
L2 error in h versus Delta x on log-log axes, one curve per polynomial
degree, fitted asymptotic rate written on each curve, dashed p+1 reference
slopes. Styling comes from the shared helpers in verification/common.py so
this figure matches Tracy's two-panel one exactly.
"""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import (  # noqa: E402
    FIGURE_ROOT, load_json, set_paper_style, plot_convergence_panel,
    theory_legend_handle,
)

set_paper_style()


HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "Vauclin1979"
OUT.mkdir(parents=True, exist_ok=True)


# p=0 is excluded from the paper because the interior-penalty form
# degenerates to a two-point-flux finite-volume scheme there. p=1 and p=2 are
# plotted and both reach the textbook p+1 rate against the nested DQ2
# reference (Gadi sweep of 2026-09-02: DQ1 1.97, DQ2 3.02 on the finest
# interval). DQ2 has no points coarser than 24 cells across because the Newton
# iteration diverges there at the common dt = 10 s. All degrees remain in
# results/convergence.json.
PLOT_DEGREES = (1, 2)


def _gather(entries) -> dict[int, tuple[np.ndarray, np.ndarray]]:
    """Return {degree: (dx, relative_error_h)} from the convergence entries."""
    out: dict[int, tuple[np.ndarray, np.ndarray]] = {}
    for degree in sorted({e["degree"] for e in entries} & set(PLOT_DEGREES)):
        rows = [e for e in entries if e["degree"] == degree]
        dxs = np.array([r["dx"] for r in rows])
        err = np.array([r["l2_error"] / r["l2_reference"] for r in rows])
        out[degree] = (dxs, err)
    return out


def main():
    path = HERE / "results" / "convergence.json"
    if not path.exists():
        print(f"missing {path} — run run_convergence.py first")
        return
    data = load_json(path)

    fig, ax = plt.subplots(figsize=(6, 5))
    plot_convergence_panel(ax, _gather(data["entries"]),
                           ylabel=r"Relative $L^2$ error in $h$")

    handles, labels = ax.get_legend_handles_labels()
    theory_handle, theory_label = theory_legend_handle()
    handles.append(theory_handle)
    labels.append(theory_label)
    leg = ax.legend(handles, labels, loc="lower right", ncol=2, fontsize=14,
                    framealpha=1.0, edgecolor="black")
    leg.get_frame().set_facecolor("white")

    fig.tight_layout()
    out = OUT / "convergence_rate.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
