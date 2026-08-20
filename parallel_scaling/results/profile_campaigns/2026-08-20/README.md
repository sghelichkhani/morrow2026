# PETSc profiling campaigns from 2026-08-20

This directory contains the complete result records from two Gadi campaigns.
The records include PBS scripts, manifests, job identifiers, outputs, errors, summaries, and PETSc profiles.

The `stage2` directory contains 16 jobs.
It contains the first smoke attempt, the accepted smoke test, and eight horizontal-scaling runs.
The production runs compare BJacobi-ILU, VLumping-inexact, VLumping-line, and VLumping-HMG at one and eight nodes.

The `bjacobi_full_matrix` directory contains 18 jobs.
It contains one smoke test and 17 production runs from all scaling families in the paper.
The one-node strong-scaling run reached its PBS walltime limit before PETSc wrote a final profile.

The archive contains 34 outputs, 34 error files, 34 PBS scripts, and 33 PETSc profiles.
The `SHA256SUMS` file records each archived file after this README.

## Source versions

Both campaigns used G-ADOPT commit `7c88d823542349b5dfe272e69a23d79b8aca9c31`.
Both campaigns used Morrow repository commit `3b4dbfdd59bd724f32a887c49d4c0bd1d82f2141` as their source base.
The jobs loaded `firedrake/main-20260806`, `petsc/main-20260815`, and PETSc 3.25.4 development.

The tracked profiling scripts and driver changes contain the uncommitted campaign changes.
Each manifest records the complete command and the original Gadi path for every job.

## Canonical result mirrors

The repository also stores the newest production files in the established result tree.
The BJacobi files come from the later full-matrix campaign when the campaigns overlap.

- `cockett/bjacobi` contains the Cockett files.
- `murrumbidgee/bjacobi` contains the vertical weak-scaling files.
- `murr_horiz/bjacobi` contains the horizontal weak-scaling files.
- `murr_strong/bjacobi` contains the strong-scaling files.
- `murr_horiz/vlumping_*` contains the new Stage-2 files at `h1` and `h8`.

The dated campaign archive is the authoritative record.
The canonical paths provide compatibility with the existing parsers and result layout.

## Original Gadi locations

The original campaign directories are:

```text
/scratch/xd2/sg8812/morrow2026-profile-stage2-20260820T053301Z
/scratch/xd2/sg8812/morrow2026-bjacobi-matrix-20260820T070948Z
```
