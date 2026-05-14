"""Stratigraphy figure for Lower Murrumbidgee.

(a) Schematic of the three vertical layers used in the model
    (shallow / lower / bedrock); rendered as a cross-section.
(b) Plan view: layer thicknesses at sampled grid points, treated as
    "bore-hole" measurements.

Output: ``figures/Murrumbidgee/stratigraphy.png``.
"""
from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np

from _murr_common import (FIGURE_DIR, load_csv_grid, mask_outside_polygon,
                          polygon_xy)


def main():
    X, Y, elev = load_csv_grid("elevation_data.csv")
    _, _, shallow_depth = load_csv_grid("shallow_layer.csv")
    _, _, lower_depth = load_csv_grid("lower_layer.csv")
    _, _, bed_depth = load_csv_grid("bedrock_data.csv")

    elev_m = mask_outside_polygon(X, Y, elev)
    # The layer CSVs store depths below surface; convert to absolute z
    # so the schematic reads as elevation rather than depth.
    shallow_m = mask_outside_polygon(X, Y, elev - shallow_depth)
    lower_m = mask_outside_polygon(X, Y, elev - lower_depth)
    bed_m = mask_outside_polygon(X, Y, elev - bed_depth)

    # Schematic cross-section: average the layer top elevations over
    # the masked domain and draw a stacked profile.
    elev_mean = float(np.nanmean(elev_m))
    shallow_mean = float(np.nanmean(shallow_m))
    lower_mean = float(np.nanmean(lower_m))
    bed_mean = float(np.nanmean(bed_m))

    fig, axes = plt.subplots(1, 2, figsize=(13, 5),
                              gridspec_kw={"width_ratios": [1.0, 1.2]})

    ax = axes[0]
    width = 1.0
    ax.fill_between([0, width], bed_mean, lower_mean, color="#a07e5e",
                    label=f"Bedrock (top at {lower_mean:.1f} m)")
    ax.fill_between([0, width], lower_mean, shallow_mean, color="#d4b48a",
                    label=f"Lower aquifer (top at {shallow_mean:.1f} m)")
    ax.fill_between([0, width], shallow_mean, elev_mean, color="#f3dcb5",
                    label=f"Shallow aquifer (top at {elev_mean:.1f} m)")
    ax.set_xlim(0, width)
    ax.set_xticks([])
    ax.set_ylabel("z (m)")
    ax.set_title("(a) Layer schematic (domain averages)")
    ax.legend(loc="lower right", fontsize=9, framealpha=0.95)

    # Plan view of shallow-layer thickness with bore-hole markers
    # placed on a sparse subgrid. Thickness = depth-to-shallow-base.
    ax = axes[1]
    thickness = mask_outside_polygon(X, Y, shallow_depth)
    im = ax.pcolormesh(X / 1000.0, Y / 1000.0, thickness,
                       cmap="YlGnBu", shading="auto", rasterized=True)
    # Bore-hole sites: every ~10 km in each direction, inside the polygon.
    step = 20
    bh_x = X[::step, ::step]
    bh_y = Y[::step, ::step]
    bh_t = thickness[::step, ::step]
    mask = ~np.isnan(bh_t)
    ax.plot(bh_x[mask] / 1000.0, bh_y[mask] / 1000.0, "k.",
            markersize=4, label="bore-hole sites")
    px, py = polygon_xy()
    ax.plot(px / 1000.0, py / 1000.0, "k-", lw=1.5)
    ax.set_aspect("equal")
    ax.set_xlabel("Easting (km)")
    ax.set_ylabel("Northing (km)")
    cbar = fig.colorbar(im, ax=ax, shrink=0.85)
    cbar.set_label("Shallow-layer thickness (m)")
    ax.set_title("(b) Shallow-layer thickness + bore-hole sites")
    ax.legend(loc="upper left", fontsize=9, framealpha=0.95)

    fig.tight_layout()
    out = FIGURE_DIR / "stratigraphy.png"
    fig.savefig(out, dpi=200, bbox_inches="tight")
    print(f"wrote {out}")
    fig.savefig(FIGURE_DIR / "stratigraphy.pdf", dpi=200, bbox_inches="tight")


if __name__ == "__main__":
    main()
