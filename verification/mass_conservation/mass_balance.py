"""Mass-balance drivers for §3.2.

Mirrors ``tests/richards/test_mass_balance.py`` but lets the caller
choose ``stage_type`` ("value" for the mass-conserving mixed form of
eq. (MoistureContentForm), "deriv" for the chain-rule / head-based
form of eq. (HeadBasedForm)) and the time integrator.

Two metrics live here, on the same top-hat-inflow problem:

``compute_balance_metrics``
    The pair (L, G) of eq. (LocalMassLoss): cell-local and global
    imbalance from a single cell-wise residual, so that summing the local
    one over cells telescopes exactly onto the global one. Used by
    ``run_local_balance.py``. **This is the §3.2 metric.**

``compute_mass_balance``
    The older scalar of eq. (NetMassLoss), sum over steps of
    |ΔV_i − ∫ q_N dt|, where V_i is assembled from the *nodal interpolant*
    ``Function(V).interpolate(theta(h))``. Retained solely because the
    retired ``run_equation_type.py`` sweep still calls it; it backs no
    figure in the paper. Be aware of what it does and does not measure: it is a
    global integral of an interpolated field, so it is neither L nor G. It
    reads ~1e-4 for CG and ~1e-10 for DG, but that CG signal is *not* a
    global mass loss — measured on the residual's own quadrature every
    space conserves globally to ~4e-11, the ``snes_rtol`` floor. It is only
    a proxy, sensitive to the local failure by way of the interpolation.
    Prefer the (L, G) pair.
"""
from __future__ import annotations

import numpy as np
from firedrake import (
    CellVolume, FacetArea, FacetNormal, as_vector, avg, dot, grad, inner, jump,
)
from firedrake import dS as dS_measure, ds as ds_measure, dx as dx_measure
from gadopt import (
    Constant, Function, FunctionSpace, HaverkampCurve, RichardsSolver,
    TestFunction, UnitSquareMesh, assemble, dx, get_boundary_ids,
)
from gadopt.equations import interior_penalty_factor

INFLOW_RATE = 1e-6

# Haverkamp parameters of eq. (Vachaud) in the manuscript. Kept in one place
# so the mass-balance metrics below cannot drift apart on the soil model.
SOIL_KWARGS = dict(theta_r=0.05, theta_s=0.40, Ks=1e-5,
                   alpha=0.5, beta=1.3, A=0.01, gamma=1.5, Ss=0.0)


def _setup(grid_points, function_space, polynomial_degree, time_step,
           time_integrator, stage_type):
    """Build the shared top-hat-inflow problem: mesh, soil, BCs, solver."""
    mesh = UnitSquareMesh(grid_points, grid_points, quadrilateral=True)
    mesh.cartesian = True  # G-ADOPT convention (tag geometry for the gravity term)
    V = FunctionSpace(mesh, function_space, polynomial_degree)

    soil = HaverkampCurve(**SOIL_KWARGS)

    bids = get_boundary_ids(mesh)
    bcs = {
        bids.left: {"flux": 0.0}, bids.right: {"flux": 0.0},
        bids.bottom: {"flux": 0.0}, bids.top: {"flux": INFLOW_RATE},
    }

    h = Function(V).assign(-1.0)
    dt = Constant(time_step)
    solver = RichardsSolver(
        h, soil, delta_t=dt, timestepper=time_integrator,
        solver_parameters_extra={"snes_atol": 1e-15},
        bcs=bcs,
        timestepper_kwargs={"stage_type": stage_type},
    )
    return mesh, V, soil, bcs, h, dt, solver


def compute_balance_metrics(*,
                            grid_points: int,
                            time_step: float,
                            t_final: float,
                            polynomial_degree: int,
                            time_integrator,
                            function_space: str,
                            stage_type: str = "value") -> tuple[float, float]:
    r"""Cell-local and global mass imbalance, from one cell-wise residual.

    Taking the solver's residual with a piecewise-constant test function
    ``w`` (every ``grad(w)`` term then drops out) gives, for cell E and
    step n, eq. (LocalMassLoss) of the manuscript:

    .. math::

        r_E = \int_E (\theta(h^{n+1}) - \theta(h^n))\,dx
              + \Delta t \oint_{\partial E} \hat F\cdot n_E\,ds
              - \Delta t \oint_{\partial E \cap \partial\Omega} q_N\,ds

    with :math:`\hat F` the scheme's single-valued numerical flux (SIPG
    plus the upwinded gravity flux). Setting ``w = 1`` makes ``jump(w) = 0``,
    so every interior-facet term cancels pairwise and the cell sum collapses
    onto the global balance. The two metrics are therefore the same residual,
    differing only in where the absolute value goes:

        L = sum_n sum_E |r_E|   (local:  no cancellation between cells)
        G = sum_n |sum_E r_E|   (global: cells allowed to cancel)

    so ``G <= L`` always, and the gap between them is exactly the failure of
    local conservation.

    One expression serves both families. For CG, ``h`` is continuous, so
    ``jump(h, n) = 0`` annihilates the SIPG penalty and ``K(h)`` is
    single-valued, which collapses the upwinded gravity flux onto the exact
    centred flux; what survives is the averaged Darcy flux, i.e. the natural
    flux reconstruction on a continuous space. For DG it is verbatim the
    scheme's own numerical flux, and the piecewise constants are a subspace
    of the test space, so ``r_E`` is a component of the very residual the
    solver drives to zero and vanishes with it -- down to ``snes_rtol``,
    not to round-off. See the README on that distinction.

    Returns:
        ``(L, G)`` in m^3.
    """
    mesh, V, soil, bcs, h, dt, solver = _setup(
        grid_points, function_space, polynomial_degree, time_step,
        time_integrator, stage_type)

    W = FunctionSpace(mesh, "DQ", 0)
    w = TestFunction(W)
    h_old = Function(V)

    # Match the residual's own quadrature (gadopt/equations.py builds its
    # measures with degree 2p+1); assembling the same integrand on a
    # different rule would show up as a spurious imbalance.
    mk = {"domain": mesh, "degree": 2 * polynomial_degree + 1}
    dX, dS_, ds_ = dx_measure(**mk), dS_measure(**mk), ds_measure(**mk)
    nrm = FacetNormal(mesh)

    K = soil.hydraulic_conductivity(h)
    k = as_vector([0.0, 1.0])  # upward unit vector in the Cartesian box

    # sigma exactly as the solver builds it: shift=-1 against the real trial
    # space, using the solver's already-rescaled interior_penalty attribute.
    sigma = interior_penalty_factor(solver.equation, shift=-1)
    sigma_int = sigma * avg(FacetArea(mesh) / CellVolume(mesh))

    residual = inner(
        w, soil.moisture_content(h) - soil.moisture_content(h_old)) * dX
    # SIPG facet flux (the penalty vanishes identically for CG).
    residual += dt * sigma_int * inner(jump(w, nrm), avg(K) * jump(h, nrm)) * dS_
    residual -= dt * inner(jump(w, nrm), avg(K * grad(h))) * dS_
    # Upwinded gravity flux (collapses to the exact centred flux for CG).
    q_n = 0.5 * (dot(K * k, nrm) - abs(dot(K * k, nrm)))
    residual -= dt * jump(w) * (q_n('+') - q_n('-')) * dS_
    # Prescribed boundary flux, same sign convention as scalar_eq.diffusion_term.
    for bid, bc in bcs.items():
        residual -= dt * w * Constant(bc["flux"]) * ds_(bid)

    local = global_ = 0.0
    t = 0.0
    while t < t_final:
        t += float(dt)
        h_old.assign(h)
        solver.solve()
        cell_residual = assemble(residual).dat.data_ro
        local += float(np.abs(cell_residual).sum())
        global_ += float(abs(cell_residual.sum()))

    return local, global_


def compute_mass_balance(*,
                         grid_points: int,
                         time_step: float,
                         t_final: float,
                         polynomial_degree: int,
                         time_integrator,
                         function_space: str,
                         stage_type: str = "value") -> float:
    mesh, V, soil, bcs, h, dt, solver = _setup(
        grid_points, function_space, polynomial_degree, time_step,
        time_integrator, stage_type)

    inflow_rate = INFLOW_RATE
    theta = Function(V).interpolate(soil.moisture_content(h))

    initial_mass = assemble(theta * dx)
    previous_mass = initial_mass
    mass_error = 0.0

    t = 0.0
    while t < t_final:
        t += float(dt)
        solver.solve()
        theta.interpolate(soil.moisture_content(h))
        inflow = float(dt) * inflow_rate
        current_mass = assemble(theta * dx)
        mass_error += abs(abs(current_mass - previous_mass) - abs(inflow))
        previous_mass = current_mass

    return mass_error
