# What is in this tree

`results/<case>/<preset>/<scale>.{out,err,pbs,profile}` — one run each.

Not every run here is a reported one, and the directory layout does not say
which is which. `reported.py` does, machine-readably: it names the experiments
the paper reports, the scales of each, and the presets reported in each.
`check_record.py` reads it and fails if a reported run is missing, has no
PETSc profile, or has counters the tables would divide by that are absent.

Three things a reader will otherwise find confusing.

**Scales that are not reported.** Development and exploratory points share the
directories with the reported ones. In `cockett/`, `smoke` is a one-node
development scale and `mega` is a point beyond the reported `huge`; the
reported ladder is `sweep`, `medium`, `large`, `huge`. In `murrumbidgee/`,
`paper_res`, `paper_res_4node`, `adaptive` and `smoke_1775_150` predate the
standardised scale names of April 2026; the reported ladder is `smoke`,
`sweep`, `medium`, `large`. The parser reads only the reported scales, so
these files affect nothing, and they are kept because they are the record of
how the experiments were arrived at.

**Preset names that changed meaning.** On 2026-08-29 the reported presets took
the names g-adopt uses, so that the paper, the library and this tree agree.
Two consequences:

- `vlumping_rtol6/` holds what used to be in `vlumping/`: the linear-tolerance
  arm of the tolerance ablation, at `ksp_rtol` 1e-6 rather than 1e-4.
- `vlumping/` now holds the reported runs of g-adopt's shipped `vlumping`
  preset. `vlumping_inexact/`, `vlumping_inexact_rich/` and
  `vlumping_*_rich_lag3/` are the historical record of how that configuration
  was reached, not the reported result. They were run with a Chebyshev
  smoother, or with the lagged operator snapshot, or both.

**Runs that failed on purpose.** Several reported runs did not complete, and
that is the result rather than a gap: block-Jacobi completes no timestep at
any scale in `murr_seasonal_saturated/`, which is what that experiment exists
to show. `check_record.py` lists these separately from errors.

Bulk output of superseded campaigns is not here at all; see `../archive/`.
