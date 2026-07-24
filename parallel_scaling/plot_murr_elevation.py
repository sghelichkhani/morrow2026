"""Elevation map for Lower Murrumbidgee.

Reads ``murrumbidgee_data/elevation_data.csv`` and produces
``figures/Murrumbidgee/elevation.png``: surface elevation in metres,
clipped to the simulation polygon, with the domain boundary overlaid.

NOT used in the paper (2026-07-20). The four standalone setup figures
(this one, ``plot_murr_mesh.py``, ``plot_murr_stratigraphy.py``,
``plot_murr_icbc.py``) were superseded by the combined 3D
visualisation in ``viz_murrumbidgee.py``
(``figures/Murrumbidgee/example_solution.png``), which shows the
topography, conductivity structure, water table and forcing together.
Kept for reference; do not regenerate/commit ``elevation.{pdf,png}``
without checking the paper's figure set first.
"""
from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from _murr_common import (FIGURE_DIR, load_csv_grid, mask_outside_polygon,
                          polygon_xy)


def main():
    X, Y, Z = load_csv_grid("elevation_data.csv")
    Z = mask_outside_polygon(X, Y, Z)

    fig, ax = plt.subplots(figsize=(7, 5))
    im = ax.pcolormesh(X / 1000.0, Y / 1000.0, Z,
                       cmap="terrain", shading="auto",
                       rasterized=True)
    px, py = polygon_xy()
    ax.plot(px / 1000.0, py / 1000.0, "k-", lw=1.5)
    ax.set_aspect("equal")
    ax.set_xlabel("Easting (km)")
    ax.set_ylabel("Northing (km)")
    cbar = fig.colorbar(im, ax=ax, shrink=0.85)
    cbar.set_label("Elevation (m)")
    # 50 km scale bar in the bottom-right (matches paper caption).
    x0, y0 = 230, 6
    ax.plot([x0, x0 + 50], [y0, y0], "k-", lw=3)
    ax.text(x0 + 25, y0 + 3, "50 km", ha="center", va="bottom", fontsize=10)

    out = FIGURE_DIR / "elevation.png"
    fig.savefig(out, dpi=200, bbox_inches="tight")
    print(f"wrote {out}")
    fig.savefig(FIGURE_DIR / "elevation.pdf", dpi=200, bbox_inches="tight")


if __name__ == "__main__":
    main()
