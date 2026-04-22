"""Plot Vauclin spatial convergence."""
from __future__ import annotations

import sys
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent))
from verification.common import FIGURE_ROOT, load_json  # noqa: E402


HERE = Path(__file__).parent
OUT = FIGURE_ROOT / "Vauclin1979"
OUT.mkdir(parents=True, exist_ok=True)


def main():
    path = HERE / "results" / "convergence.json"
    if not path.exists():
        print(f"missing {path} — run run_convergence.py first")
        return
    data = load_json(path)

    fig, ax = plt.subplots(figsize=(5, 4.2))
    entries = data["entries"]
    for degree in sorted({e["degree"] for e in entries}):
        rows = [e for e in entries if e["degree"] == degree]
        rows.sort(key=lambda r: r["dx"])
        dxs = np.array([r["dx"] for r in rows])
        err = np.array([r["l2_error"] / r["l2_reference"] for r in rows])
        slope, _ = np.polyfit(np.log(dxs), np.log(err), 1)
        ax.loglog(dxs, err, "o-", label=f"DQ{degree} (fit {slope:.2f})")

    xs = np.array([min(e["dx"] for e in entries),
                   max(e["dx"] for e in entries)])
    ax.loglog(xs, 1e-2 * (xs / xs[0]) ** 1, "k--", alpha=0.5, label=r"$O(\Delta x)$")
    ax.loglog(xs, 1e-2 * (xs / xs[0]) ** 2, "k:",  alpha=0.5, label=r"$O(\Delta x^{2})$")

    ax.set_xlabel(r"$\Delta x$ (m)")
    ax.set_ylabel(r"Relative $L^2$ error in $h$ at $t = 28{,}800$ s")
    ref = data.get("reference", {})
    ax.set_title(
        f"Vauclin (1979) spatial convergence — "
        f"reference DQ{ref.get('degree', '?')} "
        f"{ref.get('nodes_x', '?')}×{ref.get('nodes_y', '?')}"
    )
    ax.grid(True, which="both", alpha=0.3)
    ax.legend(fontsize=8)
    fig.tight_layout()
    out = OUT / "convergence_rate.pdf"
    fig.savefig(out, bbox_inches="tight")
    print(f"wrote {out}")


if __name__ == "__main__":
    main()
