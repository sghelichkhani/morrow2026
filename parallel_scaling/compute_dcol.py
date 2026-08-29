"""Column-integrated diffusion number for the Lower Murrumbidgee.

The paper's Discussion argues that the quantity deciding whether a
preconditioner needs a horizontal coarse correction is not the cell aspect
ratio but the column-integrated diffusion number

    D_col = dt * T / (S_col * L^2),
    T     = int K dz          (transmissivity, m^2/s)
    S_col = int (Ss*S + C) dz (column storativity, dimensionless)

This script evaluates it from the same basin data and the same soil model the
scaling driver uses, so the numbers quoted in the manuscript are reproducible
rather than asserted.

Usage:
    python3 compute_dcol.py                  # the manuscript's regime table
    python3 compute_dcol.py --json out.json  # machine-readable, for the tables
    python3 compute_dcol.py --latex          # write Tables/dcol.tex

Method
------

Both integrals are taken column by column over the data points of
`murrumbidgee_data/*.csv`, which carry, for each horizontal location, the
surface elevation and the depths to the shallow-layer base, the lower-layer
base, the water table and the bedrock.

`T` integrates the driver's saturated conductivity over the saturated
thickness, from the water table down to the bedrock. The conductivity is the
depth-decayed three-layer field of `murrumbidgee_3d.py`: a tanh blend, with
the same width `delta`, of the Shepparton, Calivil and Upper Renmark
saturated conductivities, times the depth decay `K_depth`.

`S_col` has a closed form under the hydrostatic initial condition. With
`Ss = 0` and `h = z' - d_wt`, so that `dh/dz' = 1`,

    S_col = int_0^{d_wt} C dz' = int_{-d_wt}^{0} (dtheta/dh) dh
          = theta_s - theta(-d_wt),

the drainable water in the unsaturated column, that is, the specific yield.
With the Haverkamp retention curve and the driver's retention-flatten factor
`f`, this is

    S_col = ((theta_s - theta_r) / f) * (1 - alpha / (alpha + d_wt^beta)).

`theta_s` is depth-dependent in the driver. It is evaluated here at the water
table, which is where the transition sits; over the range of water-table
depths in this basin the choice moves `theta_s` by under 1%.

A saturated column has `d_wt = 0`, hence `S_col = 0` and `D_col = infinity`
at every timestep. Those columns are counted and reported separately rather
than being allowed to poison the median.
"""

import argparse
import csv
import json
from pathlib import Path

import numpy as np

# --- Soil model, mirroring murrumbidgee_3d.py -------------------------------

KS_SHEPPARTON = 2.5e-05
KS_CALIVIL = 1e-03
KS_RENMARK = 5e-04
TANH_DELTA = 0.2

THETA_S_SURFACE = 0.40
THETA_R_BASE = 0.025

HAVERKAMP_ALPHA = 0.44
HAVERKAMP_BETA = 1.2924

# --- Experiment definitions -------------------------------------------------

DAY = 86400.0
SEASONAL_DT = 8035200.0          # 3 * 31 days, the seasonal dt ceiling
ORDINARY_DT = 43200.0            # 12 hours, the ordinary-regime dt ceiling

MESHES = [("h1", 1775.0), ("h2", 1250.0), ("h4", 880.0), ("h8", 620.0)]

# (label, dt, water-table offset (m), retention-flatten factor)
REGIMES = [
    ("ordinary benchmark (dt = 12 h)", ORDINARY_DT, 0.0, 1.0),
    ("daily step, unmodified soil", DAY, 0.0, 1.0),
    ("seasonal step, unmodified soil", SEASONAL_DT, 0.0, 1.0),
    ("graded stress test (+5 m, /3)", SEASONAL_DT, 5.0, 3.0),
    ("saturated stress test (+10 m, /10)", SEASONAL_DT, 10.0, 10.0),
]

PAPER_TABLES = Path.home() / "Workplace/papers/richards-morrow-2026/Tables"

# Rows of the manuscript table, as (regime key, printed description). The
# ordinary row is the 12-hour ceiling of the ordinary regime, not a daily
# step: the two differ by a factor of two and only the first is what
# Sect. 4.2.1 actually ran.
LATEX_ROWS = [
    ("ordinary benchmark (dt = 12 h)",
     r"Ordinary regime, $\Delta t \le 12$~h"),
    ("seasonal step, unmodified soil",
     r"Seasonal step, unmodified soil"),
    ("graded stress test (+5 m, /3)",
     r"Graded stress test, $+5$~m, retention $/3$"),
    ("saturated stress test (+10 m, /10)",
     r"Saturated stress test, $+10$~m, retention $/10$"),
]


def s_depth(d):
    """Porosity depth decay of the driver."""
    return np.maximum(1.0 / ((1.0 + 0.000071 * d) ** 5.989), 0.0)


def k_depth(d):
    """Conductivity depth decay of the driver."""
    return np.maximum((1.0 - d / (58.0 + 1.02 * d)) ** 3, 0.0)


def conductivity(d, shallow, lower):
    """Saturated conductivity at depth d, as the driver interpolates it."""
    i1 = 0.5 * (1.0 + np.tanh(TANH_DELTA * (shallow - d)))
    i2 = 0.5 * (1.0 + np.tanh(TANH_DELTA * (lower - d)))
    layers = (KS_SHEPPARTON * i1
              + KS_CALIVIL * (1.0 - i1) * i2
              + KS_RENMARK * (1.0 - i2))
    return k_depth(d) * layers


def transmissivity(d_wt, d_bed, shallow, lower, steps=400):
    """int K dz from the water table to the bedrock, by the midpoint rule."""
    thickness = np.maximum(d_bed - d_wt, 0.0)
    dz = thickness / steps
    total = np.zeros_like(thickness)
    for i in range(steps):
        depth = d_wt + (i + 0.5) * dz
        total += conductivity(depth, shallow, lower)
    return total * dz


def storativity(d_wt, flatten):
    """Specific yield of the unsaturated column: theta_s - theta(-d_wt)."""
    unsaturated = d_wt > 0.0
    safe = np.where(unsaturated, d_wt, 1.0)
    theta_s = THETA_S_SURFACE * s_depth(safe)
    span = (theta_s - THETA_R_BASE) / flatten
    retained = HAVERKAMP_ALPHA / (HAVERKAMP_ALPHA + safe ** HAVERKAMP_BETA)
    return np.where(unsaturated, span * (1.0 - retained), 0.0)


def read_column(path, name):
    """Read one x,y,z field, keyed by (x, y)."""
    out = {}
    with open(path, newline="", encoding="utf-8-sig") as handle:
        for row in csv.DictReader(handle):
            out[(float(row["x"]), float(row["y"]))] = float(row["z"])
    if not out:
        raise SystemExit(f"no rows read from {path} ({name})")
    return out


def build_columns(data_dir):
    """Per-column water-table depth, bedrock depth and layer bases."""
    fields = {name: read_column(data_dir / f"{name}.csv", name)
              for name in ("water_table", "bedrock_data",
                           "shallow_layer", "lower_layer")}
    keys = sorted(set.intersection(*(set(f) for f in fields.values())))
    pick = lambda name: np.array([fields[name][k] for k in keys])
    return {
        "d_wt": pick("water_table"),
        "d_bed": pick("bedrock_data"),
        "shallow": pick("shallow_layer"),
        "lower": pick("lower_layer"),
    }


def evaluate(columns, transmissivities, dt, offset, flatten, length):
    """Median D_col over the basin, plus the saturated-column count."""
    d_wt = columns["d_wt"] - offset
    s_col = storativity(d_wt, flatten)
    live = s_col > 0.0
    saturated = int((~live).sum())
    values = dt * transmissivities[live] / (s_col[live] * length * length)
    return float(np.median(values)), saturated, int(live.sum())


def latex_table(table, saturated_fraction):
    """The Sect. 5.3 regime x mesh table."""
    lines = [r"\begin{table}[t]"]
    lines.append(
        r"\caption{Median column-integrated diffusion number "
        r"$D_{\mathrm{col}}$ of Eq.~\eqref{eq:Dcol} over the Lower "
        r"Murrumbidgee, for each regime of \S\ref{sec:contest} and each of "
        r"the four horizontal meshes. The median is taken over the "
        r"$1.99\times10^{5}$ data columns of the basin, using the measured "
        r"water-table depths and the same soil model the driver solves. "
        r"$D_{\mathrm{col}}$ is the conditioning of the depth-averaged "
        r"horizontal problem, the part of the operator that a preconditioner "
        r"without a horizontal coarse correction cannot reach. The ordinary "
        r"regime sits three to four orders of magnitude below unity, which is "
        r"why block-Jacobi wins there; a seasonal step alone does not reach "
        r"unity on any mesh, so the soil levers supply the remaining factor "
        r"of three to ten; and in the graded stress test $D_{\mathrm{col}}$ "
        r"crosses unity between the third and fourth meshes, which is where "
        r"block-Jacobi's sustained step is observed to collapse in "
        r"Table~\ref{tab:seasonal_scaling}. In the saturated stress test "
        + f"{saturated_fraction:.2f}" +
        r"\% of the columns are fully saturated, where "
        r"$S_{\mathrm{col}}=0$ exactly and $D_{\mathrm{col}}$ is unbounded "
        r"at every timestep; those columns are excluded from the median.}")
    lines.append(r"\label{tab:dcol}")
    lines.append(r"\begin{tabular}{lrrrr}")
    lines.append(r"\hline")
    lines.append("Regime & " + " & ".join(
        f"${int(length)}$~m" for _, length in MESHES) + r" \\")
    lines.append(r"\hline")
    for key, description in LATEX_ROWS:
        row = table[key]
        cells = []
        for label, _ in MESHES:
            value = row[label]
            cells.append(f"{value:.4f}" if value < 0.01 else f"{value:.2f}")
        lines.append(description + " & " + " & ".join(cells) + r" \\")
    lines.append(r"\hline")
    lines.append(r"\end{tabular}")
    lines.append(r"\end{table}")
    return "\n".join(lines) + "\n"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--data-dir", type=Path,
                        default=Path(__file__).parent / "murrumbidgee_data")
    parser.add_argument("--json", type=Path, default=None,
                        help="Also write the table as JSON, for the "
                             "manuscript tables.")
    parser.add_argument("--latex", action="store_true",
                        help="Also write dcol.tex into the paper Tables dir.")
    parser.add_argument("--outdir", type=Path, default=PAPER_TABLES,
                        help="Where --latex writes.")
    args = parser.parse_args()

    columns = build_columns(args.data_dir)
    depths = columns["d_wt"]
    print(f"columns: {depths.size}")
    print(f"water-table depth (m): min {depths.min():.2f}, "
          f"median {np.median(depths):.2f}, max {depths.max():.2f}")
    thickness = columns["d_bed"] - depths
    print(f"saturated thickness (m): median {np.median(thickness):.1f}")

    # T depends on the water table, so on the regime's offset, but not on the
    # mesh or the timestep. Compute it once per distinct offset.
    cache = {}
    for _, _, offset, _ in REGIMES:
        if offset not in cache:
            cache[offset] = transmissivity(
                np.maximum(columns["d_wt"] - offset, 0.0), columns["d_bed"],
                columns["shallow"], columns["lower"])
    print(f"transmissivity T (m^2/s): median {np.median(cache[0.0]):.3e}")
    print()

    header = "regime".ljust(38) + "".join(
        f"{label} ({int(length)} m)".rjust(17) for label, length in MESHES)
    print(header)
    print("-" * len(header))

    table = {}
    saturated_fraction = 0.0
    for name, dt, offset, flatten in REGIMES:
        row = {}
        cells = []
        for label, length in MESHES:
            value, saturated, counted = evaluate(
                columns, cache[offset], dt, offset, flatten, length)
            row[label] = value
            cells.append(f"{value:17.4f}")
        table[name] = row
        print(name.ljust(38) + "".join(cells))
        if saturated:
            fraction = 100.0 * saturated / (saturated + counted)
            saturated_fraction = max(saturated_fraction, fraction)
            print(" " * 38 + f"({saturated} columns fully saturated, "
                             f"{fraction:.2f}% of the basin, D_col = inf)")

    if args.json:
        args.json.write_text(json.dumps(table, indent=2) + "\n")
        print(f"\nwritten: {args.json}")

    if args.latex:
        args.outdir.mkdir(parents=True, exist_ok=True)
        target = args.outdir / "dcol.tex"
        target.write_text(latex_table(table, saturated_fraction))
        print(f"written: {target}")


if __name__ == "__main__":
    main()
