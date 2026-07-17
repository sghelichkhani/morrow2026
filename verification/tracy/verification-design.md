# Tracy temporal verification: two-panel design

The Tracy temporal-convergence figure for §3.1 has to answer two distinct
questions, and the two questions cannot share a setup. Panel A demonstrates
that the spatial discretisation, soil curve, and `RichardsSolver` converge
to the physical solution of the Richards equation. Panel B demonstrates
that each Butcher tableau achieves its design-order temporal accuracy.
Trying to combine them into one panel forces a compromise that obscures
both results, because of an interaction between elastic storage and the
plateau region of the Exponential soil curve laid out below.

This document explains the design. The operational details for actually
running the sweep on Gadi (PBS submission, paths, walltime budget) live in
`instructions.md` next to it; that file remains the reference for setup.

## Panel A — physical convergence against Tracy's analytical solution

Stiffly-accurate tableaux only (BackwardEuler, RadauIIA(2), LobattoIIIC(2)
or similar). Exponential soil curve with `Ss = 0`. The reference is
`tracy.pressure_head_cartesian(t)`, the closed-form analytical solution
Tracy publishes. A sweep over `Δt` at the production mesh resolution shows
the integrators tracking the analytical solution as `Δt` falls; the spatial
discretisation error sets a finite floor. The interpretation of this panel
is *we are solving the right equation*. The order of accuracy is secondary
here — what matters is that the curves come down to the spatial floor
monotonically and that the floor itself is small enough to be invisible
against the eventual production mesh.

Non-stiffly-accurate tableaux are deliberately excluded from this panel.
The reason is in the next section.

## Panel B — temporal-rate convergence against a fine-dt numerical reference

All tableaux of interest: BackwardEuler, CrankNicolson, ImplicitMidpoint,
DIRK22 (`stage_type="value"`), RadauIIA(2), RadauIIA(3). Exponential soil
curve with `Ss = 1×10⁻⁴`. The reference is a single numerical solve with
RadauIIA(2) at `Δt_ref = 25 s` on the same mesh, the same DG scheme, the
same SIPG penalty, and the same `Ss`. Each test run reports
`‖h_test − h_ref‖`. Because spatial error and the Ss-induced physical
bias are identical between test and reference, both cancel pointwise in
the difference. What remains is pure temporal truncation, which falls as
`Δt^p` and lets us read each integrator's design order off the slope
of a log-log plot.

The interpretation of this panel is *each timestepper is correctly
implemented and integrates at its claimed order*.

## Why non-SA tableaux cannot appear on Panel A

The conservative variational update introduced in Irksome PR `ac344d5`
only fires for non-stiffly-accurate tableaux. For SA tableaux the new
solution is the last stage value by construction, and no separate update
solve happens. The conservative update solves a head equation whose
Jacobian with respect to `unew` is the moisture-capacity-weighted mass
matrix `C(unew) v φ dx`, with `C = dθ/dh`. The Exponential soil curve has
`C(h) = 0` for `h ≥ 0` because moisture content has plateaued at θ_s in
the saturated zone. The Tracy boundary conditions push `h` above zero in
part of the domain, so the head Jacobian acquires zero rows. MUMPS hits
`FACTOR_NUMERIC_ZEROPIVOT` and SNES bails before taking a Newton step.

This is not a numerical pathology — it is a physical statement about the
equations being discretised. With `Ss = 0` and the moisture-content
plateau, the saturated zone has no mechanism by which the discrete
problem can respond to `∂h/∂t`: elastic storage is off, moisture content
is constant, and the temporal operator has no diagonal contribution from
those nodes. Flow in the saturated zone is determined entirely by the
spatial flux balance. That is fine for stiffly-accurate tableaux, which
fold the saturated-zone update into the last stage value and never
attempt a separate inversion. It breaks any non-SA scheme that needs to
invert a Jacobian containing the time-discretised operator.

Adding `Ss > 0` regularises this. The conservative-update head's Jacobian
acquires a `Ss · S(unew) · v · φ · dx` block from the elastic-storage
term. In the saturated zone `S(h) = 1`, so the diagonal becomes
`Ss · v · φ · dx > 0` and the factor proceeds. Stiffly-accurate tableaux
do not see this distinction because they do not run the head solve.

The choice is therefore forced. Non-SA tableaux on Tracy require
`Ss > 0`, and `Ss > 0` introduces a small physical bias against Tracy's
`Ss = 0` analytical reference. That bias is `O(Ss)` in the L² norm, does
not go to zero with `Δt`, and would floor a temporal-convergence plot
prematurely. Hence the numerical reference in Panel B.

## Why the numerical reference works

The Ss-induced physical bias is identical between test and reference as
long as both use the same Ss, the same mesh, the same scheme, and the
same boundary conditions. So is the spatial discretisation error. When we
form `h_test − h_ref` both errors cancel pointwise, leaving the
integrator's temporal truncation against a near-exact-in-time reference.
RadauIIA(2) at `Δt = 25 s` is an order-3 method roughly two orders of
magnitude tighter than the smallest test `Δt`, so its own truncation does
not contaminate the slope estimate.

If the reference `Δt` is too coarse, the reference's own truncation
becomes comparable to the smallest test `Δt`'s error, the slope flattens
prematurely at small `Δt`, and the rate cannot be read cleanly. The 25 s
reference gives roughly two orders of margin against the smallest test
`Δt = 125 s`. If we extend the test sweep below 125 s the reference must
be tightened proportionally.

## What this verification needs from Irksome and g-adopt today

Both panels run on the current `sghelichkhani/conservative-update-non-sa`
Irksome branch (commit `ac344d5` plus the small uncommitted edit that
seeds `unew := u0` before the conservative-update solve and defaults
`update_solver_parameters` to the stage solver's parameters), and the
current `sghelichkhani/richardson` g-adopt branch (with the
`ExponentialCurve.saturation_potential` antiderivative and the
`richards_mass_term` rewrite that uses it). No further code changes to
Irksome or g-adopt are required. What remains is to write the drivers,
the Gadi submitter, the parsing script, and the plotting script. Those
live next to this document.

## What this verification does *not* need: the `ConservativeDt` sibling node

The `ConservativeDt` sibling-node operator discussed in
`~/Workplace/firedrake-2026-03-03/Irksome/ConservativeDT-problem.md` is
**not** required for Tracy temporal verification. Tracy uses the
Exponential soil curve, which has a closed-form antiderivative of `S(h)`,
namely `G(h) = exp(αh)/α` for `h ≤ 0` and `G(h) = 1/α + h` for `h > 0`.
That lets us write the elastic-storage term as the canonical `Ss · Dt(G(h))`,
which Irksome's `expand_time_derivatives` accepts cleanly and the
conservative-update head telescopes exactly.

`ConservativeDt` becomes necessary for §3.3 Vauclin (Van Genuchten soil)
and the §3.4 / §4 production runs (VG / Haverkamp), because those soil
curves have no closed-form antiderivative of `S(h)` and the workaround
above is unavailable. That is a separate Irksome PR conversation and is
out of scope for the Tracy temporal figure.

The two scopes are worth keeping distinct. Tracy temporal verification
ships on the existing branches. The Vauclin / Cockett / Murrumbidgee
production drivers with realistic `Ss > 0` are blocked behind the
sibling-node operator and need to be tracked separately on the to-do
list.

## Summary of what each panel proves and what it costs

| Panel | Tableaux | Soil | `Ss` | Reference | What it proves |
|---|---|---|---|---|---|
| A | SA only | Exponential | 0 | Tracy analytical | model + spatial discretisation are correct |
| B | SA + non-SA | Exponential | 1e-4 | numerical, RadauIIA(2) at Δt=25s | each integrator hits its design order |

The panels are deliberately not redundant. Panel A says nothing about the
order of accuracy of any particular integrator; Panel B says nothing
about whether the model converges to the physical solution. Together they
say both, with no contamination between the two claims.
