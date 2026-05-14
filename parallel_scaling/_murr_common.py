"""Shared helpers for Murrumbidgee plotting scripts.

Loads the CSV gridded fields and the domain polygon used in
``murrumbidgee_3d.py``. All distances are in metres; coordinates are
the projected easting / northing as stored in the CSVs.
"""
from __future__ import annotations

from pathlib import Path

import numpy as np
import pandas as pd
from matplotlib.path import Path as MplPath


# Polygon vertices used by ``murrumbidgee_3d.py`` (single source of
# truth: keep these in sync if the driver changes).
DOMAIN_VERTICES = [
    (0, 35000),
    (140000, 0),
    (280000, 0),
    (280000, 68000),
    (201000, 130000),
    (121000, 130000),
    (0, 100000),
]


DATA_DIR = Path(__file__).parent / "murrumbidgee_data"
FIGURE_DIR = Path(__file__).resolve().parent.parent / "figures" / "Murrumbidgee"
FIGURE_DIR.mkdir(parents=True, exist_ok=True)


def load_csv_grid(name: str):
    """Load a CSV stored as columns x,y,z and reshape to a regular grid.

    Returns ``(X, Y, Z)`` 2-D arrays. The CSVs are sampled on a regular
    500 m grid; we recover the grid by sorting unique x and y values.
    """
    df = pd.read_csv(DATA_DIR / name)
    xs = np.sort(df["x"].unique())
    ys = np.sort(df["y"].unique())
    X, Y = np.meshgrid(xs, ys)
    pivot = df.pivot(index="y", columns="x", values="z")
    Z = pivot.loc[ys, xs].to_numpy()
    return X, Y, Z


def mask_outside_polygon(X, Y, Z, polygon=None):
    """Return a copy of Z with values outside the polygon set to NaN."""
    poly = MplPath(polygon if polygon is not None else DOMAIN_VERTICES)
    pts = np.column_stack([X.ravel(), Y.ravel()])
    inside = poly.contains_points(pts).reshape(X.shape)
    Z_masked = np.where(inside, Z, np.nan)
    return Z_masked


def polygon_xy():
    arr = np.asarray(DOMAIN_VERTICES + [DOMAIN_VERTICES[0]], dtype=float)
    return arr[:, 0], arr[:, 1]
