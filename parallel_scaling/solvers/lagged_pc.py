"""Lagged-operator vertical lumping — ABLATION ONLY, not a recommended preset.

STATUS: ablation. Reproduces a configuration the paper tested and rejected.

This module preserves the lagged operator snapshot that was removed from
g-adopt on 2026-08-29. The paper reports the measurement that rejected it, so
the code that produces that measurement has to remain runnable; keeping it
here rather than in the library means g-adopt ships without an option it
advises against, while the negative result stays reproducible from the
repository the paper cites.

What the measurement said. Holding everything else fixed and varying only the
lag, in the near-saturated seasonal regime at a three-month step:

    configuration          h2 it/failed/(h per yr)  h4 it/failed/(h per yr)
    Chebyshev, no lag       6.6 /  4 / 0.43          8.5 /  4 / 0.44
    Richardson, no lag      6.4 /  6 / 0.40          8.2 /  3 / 0.33
    Chebyshev + lag 3      10.2 / 44 / 1.01         13.1 / 89 / 1.66
    Richardson + lag 3     10.1 / 55 / 1.00         12.4 /108 / 1.85

"failed" counts the adaptive controller halving the step and retrying. In the
ordinary regime at a twelve-hour step the lag is a wash: slower than no lag at
the two coarse scales, 2.5% and 10% faster at the two fine ones, and up to 20%
more linear iterations everywhere.

Difference from the removed implementation. The original gated the Richardson
re-measurement on snapshot-refresh steps, since between refreshes a
measurement returns what it returned last time. That gating is not reproduced
here, because it lived inside the omega mixin rather than the lag mixin. It
had no material effect on the reported runs, which measured the damping factor
twice each.

Provenance: the original lived in `gadopt/preconditioners.py` as
`_LaggedOperatorMixin`, introduced in g-adopt commit c8a3de8 and removed in
cf13249. The body below is that class verbatim.
"""

from firedrake.petsc import PETSc

from gadopt.preconditioners import VerticallyLumpedPC, VerticallyLumpedHMGPC


class _LaggedOperatorMixin:
    """Hold a private snapshot of the operator for the inner multigrid.

    Firedrake reassembles the Jacobian in place on every Newton step, so the
    PETSc object state of the operator changes every time. The inner PCMG
    reacts to that change with a full setup: the Galerkin product P^T A P, the
    coarse factorisation, and the eigenvalue estimate of a Chebyshev smoother.
    For an extruded 3-D problem that setup cost dominates the solve.

    This mixin gives the inner PCMG a private copy of the operator and
    refreshes the copy every ``lag`` Newton steps. Between two refreshes the
    object state does not change, so PETSc skips the complete setup. The outer
    Krylov method keeps the true Jacobian for its residual, therefore the
    accuracy of the Newton step does not change. Only the preconditioner is
    stale.

    The snapshot is necessary. A lag that leaves the live Jacobian visible to
    the smoother makes the smoother evaluate B_old^-1 A_live. A polynomial or
    stationary smoother contracts only on a bounded region, and modes that
    leave that region during a sharp wetting front make the multigrid cycle
    expansive. With the snapshot the smoother evaluates B_old^-1 A_old, which
    is inside the region by construction, and the drift reaches the outer
    Krylov method as a benign near-identity perturbation.

    Set the lag with the integer option ``<prefix>vlumping_lag``. The default
    is 1, which refreshes on every Newton step and reproduces the unlagged
    behaviour exactly. The snapshot costs one extra copy of the Jacobian.

    The boolean option ``<prefix>vlumping_lag_smoother`` decides whether the
    fine smoother reads the snapshot as well. The default is on, which is the
    coherent setting described above. Turn it off and the smoother keeps the
    live Jacobian, so the multigrid cycle approximates the inverse of the
    current operator with a stale smoother. On the cases measured so far that
    is faster, about 17% against 9%, and it costs no extra iterations. It is
    not the default because it evaluates ``B_old^-1 A_live``, which has no
    guarantee of contraction once a front moves the spectrum.
    """

    def _lag_initialize(self, pc, P):
        """Read the lag option and bind the inner PC to the snapshot."""
        prefix = pc.getOptionsPrefix() or ""
        self.lag = PETSc.Options().getInt(prefix + "vlumping_lag", 1)
        self.lag_smoother = PETSc.Options().getBool(
            prefix + "vlumping_lag_smoother", True
        )
        self._nupdate = 0
        if self.lag <= 1:
            self._Alag = None
            return

        # Copy the values now, because the first solve uses this matrix.
        self._Alag = P.duplicate(copy=True)
        # Both arguments must be the snapshot. KSPSetUp_Chebyshev compares the
        # state of Amat and of Pmat, so a live Amat re-triggers the estimate
        # and defeats the lag.
        self.pc.setOperators(self._Alag, self._Alag)

        # The fine smoother needs the snapshot as well, and it needs it
        # explicitly. PCSetUp_MG binds the operators of the finest smoother
        # only while they still match the operators of the PC
        # (src/ksp/pc/impls/mg/mg.c:888-892). The first setup bound them to
        # the live Jacobian, so the guard is now false and the smoother would
        # keep the live operator for the whole run. It would then evaluate
        # B_old^-1 A_live, which is the combination that loses the guarantee
        # of contraction during a sharp front.
        #
        # The multigrid residual callback cannot be corrected the same way.
        # PCMGSetResidual takes a permanent reference on the first setup
        # (mgfunc.c:151-156) and petsc4py has no binding for it, so the
        # mid-cycle residual keeps the live operator.
        if self.lag_smoother:
            self.pc.getMGSmoother(1).setOperators(self._Alag, self._Alag)

    def _lag_update(self, pc):
        """Refresh the snapshot when the lag interval is complete."""
        if self._Alag is None:
            return
        self._nupdate += 1
        if self._nupdate % self.lag == 0:
            _, P = pc.getOperators()
            # MatCopy increases the object state, so the inner PCMG runs a
            # complete setup on this step and skips it on the others.
            P.copy(self._Alag, structure=PETSc.Mat.Structure.SAME_NONZERO_PATTERN)

    def _lag_destroy(self):
        if getattr(self, "_Alag", None) is not None:
            self._Alag.destroy()
            self._Alag = None


class LaggedVerticallyLumpedPC(_LaggedOperatorMixin, VerticallyLumpedPC):
    """`VerticallyLumpedPC` with the operator snapshot. Ablation only.

    The three hooks below restore the exact call order the removed mixin had:
    the snapshot is bound after the inner PC is set up but before the damping
    factor is first measured, refreshed before each re-measurement, and
    released before the inner PC is destroyed.
    """

    def _omega_initialize(self, pc):
        _, P = pc.getOperators()
        self._lag_initialize(pc, P)
        super()._omega_initialize(pc)

    def update(self, pc):
        self._lag_update(pc)
        super().update(pc)

    def destroy(self, pc):
        self._lag_destroy()
        super().destroy(pc)


class LaggedVerticallyLumpedHMGPC(_LaggedOperatorMixin, VerticallyLumpedHMGPC):
    """`VerticallyLumpedHMGPC` with the operator snapshot. Ablation only."""

    def _omega_initialize(self, pc):
        _, P = pc.getOperators()
        self._lag_initialize(pc, P)
        super()._omega_initialize(pc)

    def update(self, pc):
        self._lag_update(pc)
        super().update(pc)

    def destroy(self, pc):
        self._lag_destroy()
        super().destroy(pc)
