"""IC / BC plate for Lower Murrumbidgee.

Three panels:
  (a) Initial depth to water table (m), from ``water_table.csv``.
  (b) Mean annual rainfall (mm/year), from ``rainfall_data.csv``.
  (c) Extraction-site locations — placeholder pending data import.

Output: ``figures/Murrumbidgee/ICBC.png``.

The extraction-site locations are not yet in this repo; the third
panel renders the domain outline with a TODO note so the layout
matches the paper while the data is sourced. Tracked in
``to-do-list.md``.
"""
from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from _murr_common import (FIGURE_DIR, load_csv_grid, mask_outside_polygon,
                          polygon_xy)


EXTRACTION_CSV = "extraction_sites.csv"  # not yet imported; see TODO above


def _polygon_box(ax):
    px, py = polygon_xy()
    ax.plot(px / 1000.0, py / 1000.0, "k-", lw=1.5)
    ax.set_aspect("equal")
    ax.set_xlabel("Easting (km)")


def main():
    X, Y, water = load_csv_grid("water_table.csv")
    _, _, rain = load_csv_grid("rainfall_data.csv")
    water_m = mask_outside_polygon(X, Y, water)
    rain_m = mask_outside_polygon(X, Y, rain)

    fig, axes = plt.subplots(1, 3, figsize=(17, 5), sharey=True)

    ax = axes[0]
    im = ax.pcolormesh(X / 1000.0, Y / 1000.0, water_m,
                       cmap="viridis_r", shading="auto", rasterized=True)
    _polygon_box(ax)
    cbar = fig.colorbar(im, ax=ax, shrink=0.85)
    cbar.set_label("Initial depth to water table (m)")
    ax.set_ylabel("Northing (km)")
    ax.set_title("(a) Initial water table")

    ax = axes[1]
    im = ax.pcolormesh(X / 1000.0, Y / 1000.0, rain_m,
                       cmap="Blues", shading="auto", rasterized=True)
    _polygon_box(ax)
    cbar = fig.colorbar(im, ax=ax, shrink=0.85)
    cbar.set_label("Rainfall (mm/year)")
    ax.set_title("(b) Rainfall")

    ax = axes[2]
    _polygon_box(ax)
    ax.set_xlim(-5, 290)
    ax.set_ylim(-5, 140)
    ax.set_title("(c) Extraction sites")
    # Placeholder: a TODO marker drawn into the figure body so the
    # gap is visible in any preview build.
    ax.text(0.5, 0.5, "extraction-site CSV\nnot yet imported",
            ha="center", va="center", transform=ax.transAxes,
            fontsize=11, color="0.5",
            bbox=dict(boxstyle="round", fc="white", ec="0.5"))

    # 50 km bar in panel (a).
    x0, y0 = 230, 6
    axes[0].plot([x0, x0 + 50], [y0, y0], "k-", lw=3)
    axes[0].text(x0 + 25, y0 + 3, "50 km", ha="center", va="bottom",
                  fontsize=10)

    fig.tight_layout()
    out = FIGURE_DIR / "ICBC.png"
    fig.savefig(out, dpi=200, bbox_inches="tight")
    print(f"wrote {out}")
    fig.savefig(FIGURE_DIR / "ICBC.pdf", dpi=200, bbox_inches="tight")


if __name__ == "__main__":
    main()
