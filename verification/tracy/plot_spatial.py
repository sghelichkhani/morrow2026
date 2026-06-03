"""Plot Tracy 2D and 3D spatial convergence side-by-side.

Reads `results/spatial_2d.json` and `results/spatial_3d.json` and produces
a single two-panel figure for §3.1 of the manuscript:

- ../../figures/Tracy/spatial_convergence.pdf   (spelling matches paper)

Styling (serif fonts, on-curve fitted rates, dashed p+1 references, ticks)
comes from the shared helpers in verification/common.py so this figure and
the Vauclin convergence figure stay visually identical.
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
RESULTS = HERE / "results"
OUT = FIGURE_ROOT / "Tracy"
OUT.mkdir(parents=True, exist_ok=True)


def _gather(json_path: Path) -> dict[int, tuple[np.ndarray, np.ndarray]]:
    """Return {degree: (dx, relative_error_h)} for every case in the file."""
    if not json_path.exists():
        print(f"skip {json_path.name}: missing")
        return {}
    data = load_json(json_path)["cases"]
    out: dict[int, tuple[np.ndarray, np.ndarray]] = {}
    for case in data.values():
        levels = [e for e in case["levels"] if "l2error_h" in e]
        if not levels:
            continue
        dxs = np.array([e["dx"] for e in levels])
        err = np.array([e["l2error_h"] / e["l2anal_h"] for e in levels])
        out[case["degree"]] = (dxs, err)
    return out


def plot_combined():
    fig, axes = plt.subplots(1, 2, figsize=(12, 5), sharey=True)
    plot_convergence_panel(axes[0], _gather(RESULTS / "spatial_2d.json"),
                           ref_xrange=(2e-2, 6e-1), tag="A", title="2D",
                           ylabel=r"Relative $L^2$ error in $h$")
    plot_convergence_panel(axes[1], _gather(RESULTS / "spatial_3d.json"),
                           ref_xrange=(4.35e-2, 6e-1), tag="B", title="3D")

    handles, labels = axes[0].get_legend_handles_labels()
    theory_handle, theory_label = theory_legend_handle()
    handles.append(theory_handle)
    labels.append(theory_label)
    leg = fig.legend(handles, labels, loc="upper center", ncol=2,
                     fontsize=14, bbox_to_anchor=(0.535, 1.06),
                     framealpha=1.0, edgecolor="black")
    leg.get_frame().set_facecolor("white")
    fig.tight_layout()
    fig.subplots_adjust(wspace=0.02, top=0.9)
    out = OUT / "spatial_convergence.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    plot_combined()
