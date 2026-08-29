"""The single definition of what the paper reports.

Display name, run key, plot style and experiment coverage are defined here and
nowhere else. They used to be restated in `make_tables.py`,
`make_performance_table.py`, `plot_paper_figures.py` and
`plot_seasonal_figures.py`, with different content in each, which is how the
weak-scaling figure came to plot VLumping-linesmooth while the performance
table reported VLumping-HMG. One definition, four consumers.

`check_record.py` reads the same table, so a preset that is reported but has
no run, or a run whose profile is missing, is an error rather than a silent
gap in a figure.
"""

from typing import NamedTuple

# --- Experiments ------------------------------------------------------------


class Experiment(NamedTuple):
    key: str                 # parsed/<key>.json
    label: str               # human label used in table block headers
    scales: tuple            # scale keys, coarsest first
    nodes: tuple             # node count for each scale


EXPERIMENTS = {
    "cockett": Experiment(
        "cockett", "Cockett 3D --- isotropic box",
        ("sweep", "medium", "large", "huge"), (1, 2, 4, 8)),
    "murr_horizontal": Experiment(
        "murr_horizontal",
        "Lower Murrumbidgee --- horizontal weak scaling, ordinary regime",
        ("h1", "h2", "h4", "h8"), (1, 2, 4, 8)),
    "murr_vertical": Experiment(
        "murr_vertical",
        "Lower Murrumbidgee --- vertical weak scaling, ordinary regime",
        ("smoke", "sweep", "medium", "large"), (1, 2, 4, 8)),
    "murr_seasonal": Experiment(
        "murr_seasonal",
        "Lower Murrumbidgee --- seasonal weak scaling, graded",
        ("h1", "h2", "h4", "h8"), (1, 2, 4, 8)),
    "murr_seasonal_saturated": Experiment(
        "murr_seasonal_saturated",
        "Lower Murrumbidgee --- seasonal weak scaling, saturated",
        ("h1", "h2", "h4", "h8"), (1, 2, 4, 8)),
    "murr_strong": Experiment(
        "murr_strong", "Lower Murrumbidgee --- strong scaling",
        ("s1", "s2", "s4", "s8", "s16", "s32"), (1, 2, 4, 8, 16, 32)),
}

# The horizontal weak-scaling ladder, shared by the ordinary and both seasonal
# experiments: the same four meshes, so nothing that changes between them can
# be attributed to the mesh.
HORIZONTAL_SPACING_M = {"h1": 1775, "h2": 1250, "h4": 880, "h8": 620}


# --- Presets ----------------------------------------------------------------


class Preset(NamedTuple):
    """One preset as the paper reports it.

    Colours and markers are those the figures already used; they are recorded
    here so that routing the plotters through this module cannot change how a
    published figure looks.
    """

    key: str                 # directory name under results/<case>/
    label: str               # name used in the paper
    colour: str
    marker: str
    experiments: tuple       # experiments in which this preset is reported


# Reported presets, in the order tables list them. `bjacobi` and `gmg` are the
# baselines that survive the basin anisotropy; the three lumped presets are the
# paper's contribution. The black-box baselines below are reported only in the
# outcome table, because they do not complete enough runs to plot.
REPORTED = (
    Preset("bjacobi", "BJacobi", "#000000", "d",
           ("cockett", "murr_horizontal", "murr_vertical",
            "murr_seasonal", "murr_seasonal_saturated", "murr_strong")),
    Preset("gmg", "GMG-H", "#2ca02c", "P",
           ("cockett", "murr_horizontal", "murr_vertical",
            "murr_seasonal", "murr_seasonal_saturated")),
    Preset("vlumping", "VLumping", "#d62728", "o",
           ("cockett", "murr_horizontal", "murr_vertical",
            "murr_seasonal", "murr_seasonal_saturated", "murr_strong")),
    Preset("vlumping_linesmooth", "VLumping-linesmooth", "#9467bd", "s",
           ("cockett", "murr_horizontal", "murr_vertical",
            "murr_seasonal", "murr_seasonal_saturated")),
    Preset("vlumping_hmg", "VLumping-HMG", "#3182bd", "X",
           ("cockett", "murr_horizontal", "murr_vertical", "murr_strong")),
)

# No scaling curve of their own: culled by the basin anisotropy, so they appear
# in the outcome table everywhere and in the performance table only where they
# actually complete, which in practice is the isotropic Cockett box. The
# performance table filters on the run outcome rather than on this list, so a
# preset that completes at the reference scale is reported there either way.
NO_CURVE = (
    Preset("sor", "SOR", "#7f7f7f", "x",
           ("cockett", "murr_horizontal", "murr_vertical")),
    Preset("gamg", "GAMG", "#8c564b", "^",
           ("cockett", "murr_horizontal", "murr_vertical")),
    Preset("boomeramg", "BoomerAMG", "#1f77b4", "D",
           ("cockett", "murr_horizontal", "murr_vertical")),
)

# Table row order, unchanged from the manuscript: increasing structure, with
# the paper's own presets last. Kept explicit so that reordering the
# definitions above cannot silently reorder the tables.
ROW_ORDER = ("sor", "bjacobi", "gamg", "boomeramg", "gmg",
             "vlumping", "vlumping_linesmooth", "vlumping_hmg")

_unordered = REPORTED + NO_CURVE
assert {p.key for p in _unordered} == set(ROW_ORDER), "ROW_ORDER is stale"
ALL_REPORTED = tuple(next(p for p in _unordered if p.key == k)
                     for k in ROW_ORDER)

BY_KEY = {p.key: p for p in ALL_REPORTED}
BY_LABEL = {p.label: p for p in ALL_REPORTED}


# Combinations that were deliberately not run, so their absence is a scoping
# decision rather than a gap. The strong-scaling sweep starts at two nodes for
# VLumping-HMG: at one node the fixed 3.2e8-DOF problem does not fit in memory,
# which VLumping demonstrates, and repeating it for the nested variant would
# only re-confirm the same out-of-memory failure.
NOT_ATTEMPTED = {
    ("murr_strong", "vlumping_hmg", "s1"),
    ("murr_strong", "gmg", "s1"),
}


def attempted(experiment: str, preset_key: str, scale: str) -> bool:
    """False when a combination was deliberately not run."""
    return (experiment, preset_key, scale) not in NOT_ATTEMPTED


def presets_for(experiment: str, curves_only: bool = False) -> tuple:
    """Presets reported in one experiment, in table order.

    `curves_only` restricts to the presets that carry a scaling curve, which
    is what the figures plot. Tables use the full list and drop whatever did
    not complete.
    """
    source = REPORTED if curves_only else ALL_REPORTED
    return tuple(p for p in source if experiment in p.experiments)


def style(key: str) -> dict:
    """Matplotlib style for one preset."""
    p = BY_KEY[key]
    return {"color": p.colour, "marker": p.marker, "label": p.label}


# --- Run parameters that the record has to agree with -----------------------

# submit_jobs.py SEASONAL_DT_MAX. A run whose largest step equals this was
# limited by the ceiling we imposed, not by the preconditioner, so its
# sustained step is a lower bound rather than a measurement.
SEASONAL_DT_CEILING_S = 8035200.0

# submit_jobs.py, ordinary regime.
ORDINARY_DT_CEILING_S = 43200.0
