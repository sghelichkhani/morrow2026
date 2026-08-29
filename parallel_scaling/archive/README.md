# Archived run outputs

Bulk run outputs that no longer back a number in the paper are held outside
this repository, on NCI Gadi:

```
/g/data/xd2/sg8812/morrow2026-archive/2026-08-29-superseded/
```

`2026-08-29-superseded.manifest` in this directory lists every archived file
with its SHA-256 and its size, so the archive can be verified after a copy and
found again years from now. Regenerate the same listing on Gadi with:

```bash
cd /g/data/xd2/sg8812/morrow2026-archive/2026-08-29-superseded
find . -type f | sort | while read f; do
    printf "%s  %s  %s\n" $(sha256sum "$f" | cut -c1-64) $(stat -c%s "$f") "$f"
done
```

`/g/data` is a working store, not a citable one. The archive of record for the
paper is the Zenodo deposit of this repository (see `PUBLISHING.md`); the files
below are the raw material behind decisions the paper describes but does not
plot, and they are kept because a reader who disputes one of those decisions
must be able to check it.

## Why these files are not in git

Gadi `/scratch` is purge-eligible and the `xd2` allocation was at 92% when this
archive was made, so `/scratch` is not a safe home for a record that has to
outlive the review cycle. The repository keeps what every reported figure and
table is computed from: the parsed JSON in `parsed/`, the PETSc `-log_view`
profiles of the reported runs, the drivers, and the figures. It does not keep
bulk output of experiments that were superseded.

## What is in the archive

| Directory | Files | MB | What it is |
|---|---|---|---|
| `cockett_hires/` | 2104 | 5059 | Visualisation output (`.vtu`) from a high-resolution Cockett run made for a figure that is not in the paper. Never a scaling case. |
| `murr_monthly/` | 64 | 9.5 | The monthly-timestep Murrumbidgee campaign of 2026-08-27. This is where the regime dependence was first seen, and it is superseded by the seasonal campaign, which uses a three-month ceiling and the graded and saturated soil levers. Mechanism and derivation: `NOTES/2026-08-27-MONTHLY-MURRUMBIDGEE.md`. |
| `murr_hierarchy/` | 29 | 5.7 | Multigrid hierarchy-depth sweep at the eight-node basin configuration, for GMG-H and VLumping-HMG. It produced `Tables/hierarchy_depth.tex`, which the manuscript no longer includes. |
| `retired-presets/` | 77 | 9.8 | The custom-Pmat family (`gamg_diffpmat`, `gamg_lipnikov`, `boomeramg_lipnikov`) and the SNES accelerators (`ngmres_gmg`, `qn_gmg`), on Cockett and the Murrumbidgee vertical ladder. Retired in April 2026; described in `SOLVER-STUDY.md` §7. |
| `linesmooth-pre-richardson/` | 153 | 26 | Every `vlumping_linesmooth` run made before 2026-08-29, when that preset used a Chebyshev smoother and rebuilt the preconditioner on every Newton step. Superseded by the reruns with the measured Richardson damping. Kept because the two sets together are the before-and-after of that change. |

Total 2427 files, 5.11 GB.

## What deliberately stayed in the repository

The lagged-snapshot runs (`*_rich_lag3`, `*_snapshot_lag3`) and the two
attribution variants (`vlumping_linesmooth_rich`, `vlumping_linesmooth_lag3`)
are **not** archived, even though no figure plots them. They are the evidence
for a claim the paper does make: that lagging the coarse operator against a
private snapshot earns very little and costs a factor of four in a
near-saturated regime. A reader has to be able to check that, so the runs stay
with the code that produced them. The preconditioner itself also stayed, in
`solvers/lagged_pc.py`, after it was removed from g-adopt.
