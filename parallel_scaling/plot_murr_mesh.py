"""Surface mesh + vertical-slice schematic for Lower Murrumbidgee.

The actual mesh is built by ``murrumbidgee_3d.py`` via omega's
constrained Delaunay routine, which is not available in the default
plotting env. The surface panel here therefore uses an unstructured
Delaunay triangulation of points seeded inside the same polygon at a
target horizontal resolution; the visual count of triangles matches
the production mesh closely enough for a methods figure.

Output: ``figures/Murrumbidgee/mesh.png``.

NOT used in the paper (2026-07-20) — superseded, along with
``plot_murr_elevation.py``, ``plot_murr_stratigraphy.py`` and
``plot_murr_icbc.py``, by the combined visualisation in
``viz_murrumbidgee.py`` (``figures/Murrumbidgee/example_solution.png``).
Kept for reference only.
"""
from __future__ import annotations

import matplotlib.pyplot as plt
import matplotlib.tri as mtri
import numpy as np
from matplotlib.path import Path as MplPath
from scipy.spatial import Delaunay

from _murr_common import (DOMAIN_VERTICES, FIGURE_DIR, load_csv_grid,
                          polygon_xy)


# Target horizontal resolution used in the paper's coarse demonstration
# mesh (different from the production scaling runs).
H_RES = 5000.0  # metres


def _seed_points_in_polygon(poly_vertices, h_res, buffer=0.0):
    poly = MplPath(poly_vertices)
    xs = np.arange(min(p[0] for p in poly_vertices) - buffer,
                   max(p[0] for p in poly_vertices) + buffer + h_res, h_res)
    ys = np.arange(min(p[1] for p in poly_vertices) - buffer,
                   max(p[1] for p in poly_vertices) + buffer + h_res, h_res)
    X, Y = np.meshgrid(xs, ys)
    pts = np.column_stack([X.ravel(), Y.ravel()])
    inside = poly.contains_points(pts)
    interior = pts[inside]
    boundary = np.array(poly_vertices)
    return np.vstack([interior, boundary])


def _vertical_section_xy(start, end, n=200):
    """Coordinates along a straight transect from ``start`` to ``end``."""
    t = np.linspace(0.0, 1.0, n)
    x = start[0] + t * (end[0] - start[0])
    y = start[1] + t * (end[1] - start[1])
    return x, y, t


def _sample(X, Y, Z, xq, yq):
    """Bilinear-ish sample of a regular grid at arbitrary query points."""
    from scipy.interpolate import RegularGridInterpolator
    xs = X[0, :]
    ys = Y[:, 0]
    interp = RegularGridInterpolator((ys, xs), Z, bounds_error=False,
                                      fill_value=np.nan)
    pts = np.column_stack([yq, xq])
    return interp(pts)


def main():
    pts = _seed_points_in_polygon(DOMAIN_VERTICES, H_RES)
    tri = Delaunay(pts)

    # Filter triangles whose centroid lies outside the polygon (handles
    # the concave south-west corner correctly).
    poly = MplPath(DOMAIN_VERTICES)
    centroids = pts[tri.simplices].mean(axis=1)
    keep = poly.contains_points(centroids)
    triangulation = mtri.Triangulation(pts[:, 0] / 1000.0, pts[:, 1] / 1000.0,
                                        triangles=tri.simplices[keep])

    fig, axes = plt.subplots(1, 2, figsize=(13, 5),
                              gridspec_kw={"width_ratios": [1.2, 1.0]})

    ax = axes[0]
    ax.triplot(triangulation, color="0.4", lw=0.4)
    px, py = polygon_xy()
    ax.plot(px / 1000.0, py / 1000.0, "k-", lw=1.5)
    ax.set_aspect("equal")
    ax.set_xlabel("Easting (km)")
    ax.set_ylabel("Northing (km)")
    ax.set_title(f"(a) Surface mesh ($\\Delta x \\approx {int(H_RES/1000)}$ km)")

    # Vertical slice along the longest transect.
    start = (40_000, 100_000)
    end = (260_000, 30_000)
    xq, yq, t = _vertical_section_xy(start, end)
    _, _, elev = load_csv_grid("elevation_data.csv")
    _, _, bed_depth = load_csv_grid("bedrock_data.csv")
    _, _, shallow_depth = load_csv_grid("shallow_layer.csv")
    _, _, lower_depth = load_csv_grid("lower_layer.csv")
    X, Y, _ = load_csv_grid("elevation_data.csv")

    # The shallow/lower/bedrock CSVs store depths below the surface
    # (used as ``shallow - depth`` thresholds in the driver), so the
    # absolute z of each interface is surface elevation minus depth.
    z_elev = _sample(X, Y, elev, xq, yq)
    z_shallow = z_elev - _sample(X, Y, shallow_depth, xq, yq)
    z_lower = z_elev - _sample(X, Y, lower_depth, xq, yq)
    z_bed = z_elev - _sample(X, Y, bed_depth, xq, yq)

    distance_km = (t * np.hypot(end[0] - start[0], end[1] - start[1])) / 1000.0

    ax = axes[1]
    ax.fill_between(distance_km, z_bed, z_lower, color="#a07e5e",
                    label="bedrock → lower aquifer")
    ax.fill_between(distance_km, z_lower, z_shallow, color="#d4b48a",
                    label="lower → shallow")
    ax.fill_between(distance_km, z_shallow, z_elev, color="#f3dcb5",
                    label="shallow → surface")
    ax.plot(distance_km, z_elev, "k-", lw=1.2)
    # Indicative extruded-layer lines (300 layers; we draw 30 for
    # legibility, evenly spaced through the column at each transect
    # location).
    n_layer_lines = 30
    for k in range(1, n_layer_lines):
        frac = k / n_layer_lines
        ax.plot(distance_km, z_bed + frac * (z_elev - z_bed),
                color="0.3", lw=0.2, alpha=0.5)
    ax.set_xlabel("Transect distance (km)")
    ax.set_ylabel("z (m)")
    ax.set_title("(b) Vertical slice (3-layer stratigraphy, indicative)")
    ax.legend(loc="lower right", fontsize=9, framealpha=0.9)

    fig.tight_layout()
    out = FIGURE_DIR / "mesh.png"
    fig.savefig(out, dpi=200, bbox_inches="tight")
    print(f"wrote {out}")
    fig.savefig(FIGURE_DIR / "mesh.pdf", dpi=200, bbox_inches="tight")


if __name__ == "__main__":
    main()
