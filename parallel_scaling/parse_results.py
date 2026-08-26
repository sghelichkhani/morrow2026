"""
Parse Richards solver scaling results from .out files into JSON.

Produces one JSON file per experiment:
  cockett.json, murr_vertical.json, murr_horizontal.json

Usage:
    python parse_results.py                    # parse all, write JSON to ./parsed/
    python parse_results.py --outdir ./data    # custom output directory
    python parse_results.py --experiments cockett  # parse only cockett
"""

import argparse
import json
import re
from pathlib import Path

RESULTS = Path(__file__).parent / "results"

# ── Regex patterns ──────────────────────────────────────────────────────────

# Header lines
RE_CASE = re.compile(r"^Case:\s*(.+)")
RE_SOLVER = re.compile(r"^Solver:\s*(\S+)\s*$")
RE_SCALE = re.compile(r"^Scale:\s*(.+)")
RE_NODES = re.compile(r"^Nodes:\s*(\d+)")
RE_CPUS = re.compile(r"^CPUs:\s*(\d+)")
RE_DOF = re.compile(r"^Number of degrees of freedom:\s*(\d+)")
RE_MESH = re.compile(r"^Mesh:\s*(.+)")
RE_TIMESTEPPER = re.compile(r"^Time stepper:\s*(.+)")

# Per-step summary lines
# Cockett:  t = 300.00 s | step 1/30 | wall 58.24 s | NL 2 | L 30
# Murr:     t = 0.69 d | step 1/100000 | dt = 60.0 s | wall 12.34 s | NL 3 | L 45
RE_STEP_COCKETT = re.compile(
    r"^t = ([\d.]+) s \| step (\d+)/(\d+) \| wall ([\d.]+) s \| NL (\d+) \| L (\d+)"
)
RE_STEP_MURR = re.compile(
    r"^t = ([\d.]+) d \| step (\d+)/(\d+) \| dt = ([\d.]+) s \| wall ([\d.]+) s \| NL (\d+) \| L (\d+)"
)

# SNES monitor: "  0 SNES Function norm 3.471807577015e-06"
RE_SNES_NORM = re.compile(r"^\s*(\d+) SNES Function norm ([\d.e+-]+)")

# Outer KSP convergence (matches "Equation_ solve" but NOT "Equation_mg_coarse_ solve" etc.)
RE_OUTER_KSP = re.compile(
    r"Linear BackwardEuler-Equation_ solve (?:converged|did not converge) "
    r"due to (\S+) iterations (\d+)"
)

# Nonlinear convergence/divergence
RE_NL_CONVERGED = re.compile(
    r"Nonlinear BackwardEuler-Equation_ solve (converged|did not converge) "
    r"due to (\S+) iterations (\d+)"
)

# Final summary lines
RE_DONE_MURR = re.compile(
    r"^Done \| total NL (\d+) \| total L (\d+) \| mean wall/step ([\d.]+) s "
    r"\| peak RSS (\d+) MB \| steps (\d+) \| failed (\d+)"
)
RE_DONE_COCKETT = re.compile(
    r"^Done \| total NL (\d+) \| total L (\d+) \| mean wall/step ([\d.]+) s "
    r"\| peak RSS (\d+) MB$"
)
RE_FAILED = re.compile(r"^FAILED.*failed (\d+)")

# OOM / crash
RE_SIGNAL = re.compile(r"exited on signal (\d+)")
RE_PBS_WALLTIME_KILL = re.compile(
    r"PBS: job killed: walltime (\d+) exceeded limit (\d+)"
)

# PBS resource usage
RE_PBS_WALLTIME = re.compile(r"Walltime Used:\s*(\S+)")
RE_PBS_MEMORY = re.compile(r"Memory Used:\s*(\S+)")

# ── PETSc -log_view profile (sibling .profile file) ──────────────────────────
# The .profile holds the log_view timing table written by the SAME Gadi job as
# the .out. We attach its decomposition to the same run record so wall time,
# iteration counts (from .out) and the time breakdown (from .profile) live
# together and cross-check each other. See parse_log_view.
#
# Top-level events, whose Main-Stage time already includes their nested
# sub-stage cost, so they decompose SNESSolve directly. For multigrid solvers
# PETSc splits work across log stages and each event prints once per stage; we
# take the FIRST (Main Stage) occurrence, which carries the global total.
PROFILE_EVENTS = [
    "SNESSolve", "SNESFunctionEval", "SNESJacobianEval",
    "KSPSolve", "KSPSetUp", "PCSetUp", "PCSetUpOnBlocks", "PCApply",
    "MatMult", "MatAssemblyBegin", "MatAssemblyEnd",
]
RE_LV_NPROC = re.compile(r"with (\d+) processes")
RE_LV_TIME = re.compile(r"^Time \(sec\):\s+([\d.eE+-]+)")


def _lv_event_row(tokens):
    """Parse one -log_view event row. Columns (after the event name) are
    Count/CountRatio, Time-Max/Ratio, Flop-Max/Ratio, Mess, AvgLen, Reduct,
    then five global percentages. All fields we read sit left of the optional
    'Multiple stages' text, so a staged event still parses."""
    try:
        row = {
            "count": int(float(tokens[1])),
            "time_s": float(tokens[3]),
            "time_ratio": float(tokens[4]),   # Max/Min across ranks = imbalance
            "flop_max": float(tokens[5]),
            "mess": float(tokens[7]),
            "reduct": float(tokens[9]),
            "pct_time": int(tokens[10]),      # global %T
        }
    except (ValueError, IndexError):
        return None
    try:
        row["mflops"] = float(tokens[-1])
    except (ValueError, IndexError):
        row["mflops"] = None
    return row


def parse_log_view(path):
    """Parse the PETSc -log_view table in a .profile file into a dict with the
    top-level events, the total wall time, process count, and a derived
    setup/apply/Jacobian decomposition of SNESSolve. Returns None if the file
    is absent or holds no log_view table."""
    if path is None or not path.exists():
        return None
    lines = path.read_text(errors="replace").splitlines()
    if not any(l.startswith("SNESSolve") or l.startswith("KSPSolve")
               for l in lines):
        return None

    prof = {"file": str(path), "events": {}}
    wanted = set(PROFILE_EVENTS)
    for line in lines:
        if "nprocs" not in prof:
            m = RE_LV_NPROC.search(line)
            if m:
                prof["nprocs"] = int(m.group(1))
        if "wall_total_s" not in prof:
            m = RE_LV_TIME.match(line)
            if m:
                prof["wall_total_s"] = float(m.group(1))
        tok = line.split()
        if tok and tok[0] in wanted and tok[0] not in prof["events"]:
            row = _lv_event_row(tok)
            if row:
                prof["events"][tok[0]] = row
    if not prof["events"]:
        return None

    # Derived decomposition, as a share of SNESSolve time (the whole solve).
    ev = prof["events"]

    def t(name):
        return ev.get(name, {}).get("time_s")

    t_snes = t("SNESSolve") or prof.get("wall_total_s")
    if t_snes:
        setup = (t("PCSetUp") or 0.0) + (t("PCSetUpOnBlocks") or 0.0)

        def pct(name):
            v = t(name)
            return round(100.0 * v / t_snes, 2) if v is not None else None

        prof["derived"] = {
            "denominator": "SNESSolve" if t("SNESSolve") else "wall_total",
            "t_snes_s": round(t_snes, 3),
            "pc_setup_s": round(setup, 3),
            "pc_setup_pct": round(100.0 * setup / t_snes, 2),
            "pc_apply_pct": pct("PCApply"),
            "ksp_total_pct": pct("KSPSolve"),
            "jacobian_pct": pct("SNESJacobianEval"),
            "function_pct": pct("SNESFunctionEval"),
            "matmult_mainstage_pct": pct("MatMult"),
        }
    return prof


def parse_file(path):
    """Parse a single .out file and return a structured dict."""
    if not path.exists():
        return None

    text = path.read_text(errors="replace")
    lines = text.splitlines()
    error_path = path.with_suffix(".err")
    error_text = error_path.read_text(errors="replace") if error_path.exists() else ""

    result = {
        "file": str(path),
        "header": {},
        "steps": [],
        "newton_detail": [],  # per-time-step Newton/KSP detail
        "summary": None,
        "outcome": "incomplete",
    }

    # ── Parse header ────────────────────────────────────────────────────
    for line in lines[:30]:
        for name, pat in [
            ("case", RE_CASE), ("solver", RE_SOLVER), ("scale", RE_SCALE),
            ("nodes", RE_NODES), ("cpus", RE_CPUS), ("dof", RE_DOF),
            ("mesh", RE_MESH), ("timestepper", RE_TIMESTEPPER),
        ]:
            m = pat.match(line)
            if m:
                val = m.group(1).strip()
                if name in ("nodes", "cpus", "dof"):
                    val = int(val)
                result["header"][name] = val

    # ── Walk through the file collecting per-Newton and per-step data ───
    # State for accumulating Newton steps within a time step
    current_newton_steps = []  # list of dicts per Newton iteration
    current_snes_norms = []
    current_ksp_iters = []  # outer KSP iters for current Newton step

    def flush_newton_step(snes_idx, norm):
        """Record the start of a new Newton step, flushing the previous."""
        if current_snes_norms:
            current_newton_steps.append({
                "snes_idx": len(current_snes_norms) - 1,
                "norm": current_snes_norms[-1],
                "ksp_iters": list(current_ksp_iters),
            })
        current_ksp_iters.clear()

    for line in lines:
        # SNES Function norm
        m = RE_SNES_NORM.match(line)
        if m:
            snes_idx = int(m.group(1))
            norm = float(m.group(2))
            # If this is not the 0th Newton step, flush the previous
            if snes_idx > 0 and current_snes_norms:
                current_newton_steps.append({
                    "snes_idx": snes_idx - 1,
                    "norm": current_snes_norms[-1],
                    "outer_ksp_iters": sum(current_ksp_iters) if current_ksp_iters else 0,
                })
                current_ksp_iters.clear()
            if snes_idx == 0:
                # New time step starting — reset accumulators
                current_newton_steps = []
                current_snes_norms = []
                current_ksp_iters = []
            current_snes_norms.append(norm)
            continue

        # Outer KSP convergence
        m = RE_OUTER_KSP.search(line)
        if m:
            current_ksp_iters.append(int(m.group(2)))
            continue

        # Nonlinear convergence — flush last Newton step
        m = RE_NL_CONVERGED.search(line)
        if m:
            if current_snes_norms:
                current_newton_steps.append({
                    "snes_idx": len(current_snes_norms) - 1,
                    "norm": current_snes_norms[-1],
                    "outer_ksp_iters": sum(current_ksp_iters) if current_ksp_iters else 0,
                })
                current_ksp_iters.clear()
            continue

        # Per-step summary (Cockett format)
        m = RE_STEP_COCKETT.match(line)
        if m:
            step_data = {
                "sim_time_s": float(m.group(1)),
                "step": int(m.group(2)),
                "total_steps": int(m.group(3)),
                "wall_s": float(m.group(4)),
                "nl": int(m.group(5)),
                "linear": int(m.group(6)),
            }
            # Attach Newton detail if available
            newton_info = {
                "step": step_data["step"],
                "snes_norms": list(current_snes_norms),
                "newton_steps": list(current_newton_steps),
            }
            result["steps"].append(step_data)
            result["newton_detail"].append(newton_info)
            current_newton_steps = []
            current_snes_norms = []
            current_ksp_iters = []
            continue

        # Per-step summary (Murrumbidgee format)
        m = RE_STEP_MURR.match(line)
        if m:
            step_data = {
                "sim_time_d": float(m.group(1)),
                "step": int(m.group(2)),
                "total_steps": int(m.group(3)),
                "dt_s": float(m.group(4)),
                "wall_s": float(m.group(5)),
                "nl": int(m.group(6)),
                "linear": int(m.group(7)),
            }
            newton_info = {
                "step": step_data["step"],
                "snes_norms": list(current_snes_norms),
                "newton_steps": list(current_newton_steps),
            }
            result["steps"].append(step_data)
            result["newton_detail"].append(newton_info)
            current_newton_steps = []
            current_snes_norms = []
            current_ksp_iters = []
            continue

        # Done summary (Murrumbidgee format — check first, it's more specific)
        m = RE_DONE_MURR.match(line)
        if m:
            result["summary"] = {
                "total_nl": int(m.group(1)),
                "total_linear": int(m.group(2)),
                "mean_wall_per_step": float(m.group(3)),
                "peak_rss_mb": int(m.group(4)),
                "steps_completed": int(m.group(5)),
                "failed_steps": int(m.group(6)),
            }
            result["outcome"] = "success"
            continue

        # Done summary (Cockett format)
        m = RE_DONE_COCKETT.match(line)
        if m:
            result["summary"] = {
                "total_nl": int(m.group(1)),
                "total_linear": int(m.group(2)),
                "mean_wall_per_step": float(m.group(3)),
                "peak_rss_mb": int(m.group(4)),
            }
            # Derive steps_completed from the steps list
            if result["steps"]:
                result["summary"]["steps_completed"] = len(result["steps"])
            result["outcome"] = "success"
            continue

        # FAILED
        m = RE_FAILED.match(line)
        if m:
            result["outcome"] = "diverged"
            result["summary"] = {"failed_steps": int(m.group(1))}
            continue

        # OOM (signal 9)
        m = RE_SIGNAL.search(line)
        if m and int(m.group(1)) == 9:
            result["outcome"] = "oom"
            continue

    walltime_kill = RE_PBS_WALLTIME_KILL.search(error_text)
    if walltime_kill:
        result["outcome"] = "walltime"

    # ── Compute derived steady-state metrics ────────────────────────────
    if result["steps"] and len(result["steps"]) > 1:
        steady = result["steps"][1:]  # skip step 1
        walls = [s["wall_s"] for s in steady]
        result["steady_state"] = {
            "mean_wall_per_step": sum(walls) / len(walls),
            "min_wall": min(walls),
            "max_wall": max(walls),
            "total_nl": sum(s["nl"] for s in steady),
            "total_linear": sum(s["linear"] for s in steady),
            "num_steps": len(steady),
        }
    elif result["steps"] and len(result["steps"]) == 1:
        # Only one step completed
        s = result["steps"][0]
        result["steady_state"] = {
            "mean_wall_per_step": s["wall_s"],
            "min_wall": s["wall_s"],
            "max_wall": s["wall_s"],
            "total_nl": s["nl"],
            "total_linear": s["linear"],
            "num_steps": 1,
        }

    # ── Parse PBS resource footer ───────────────────────────────────────
    pbs = {}
    for line in lines[-15:]:
        m = RE_PBS_WALLTIME.search(line)
        if m:
            pbs["walltime_used"] = m.group(1)
        m = RE_PBS_MEMORY.search(line)
        if m:
            pbs["memory_used"] = m.group(1)
    if walltime_kill:
        pbs["walltime_used_seconds"] = int(walltime_kill.group(1))
        pbs["walltime_limit_seconds"] = int(walltime_kill.group(2))
    if pbs:
        result["pbs"] = pbs

    # ── Attach PETSc -log_view profile from the sibling .profile ────────
    # The two sources describe one execution, so we keep them in one record
    # and cross-check: the event counts must match the iteration counts the
    # .out reports, and the profiled SNESSolve time must match the .out wall
    # time (a mismatch means the .profile came from a different run).
    profile = parse_log_view(path.with_suffix(".profile"))
    if profile:
        s = result.get("summary") or {}
        ev = profile["events"]
        val = {}
        if "SNESSolve" in ev and s.get("steps_completed") is not None:
            val["snes_count"] = ev["SNESSolve"]["count"]
            val["steps_completed"] = s["steps_completed"]
            val["steps_match"] = ev["SNESSolve"]["count"] == s["steps_completed"]
        if "KSPSolve" in ev and s.get("total_nl") is not None:
            val["ksp_count"] = ev["KSPSolve"]["count"]
            val["total_nl"] = s["total_nl"]
            val["nl_match"] = ev["KSPSolve"]["count"] == s["total_nl"]
        if "PCApply" in ev and s.get("total_linear"):
            tl = s["total_linear"]
            val["pcapply_count"] = ev["PCApply"]["count"]
            val["total_linear"] = tl
            # PCApply count tracks the Krylov iteration total, but not exactly:
            # right-preconditioned GMRES applies the PC a few extra times per
            # solve, so allow 5% before flagging a real provenance mismatch.
            val["linear_close"] = abs(ev["PCApply"]["count"] - tl) <= max(3, 0.05 * tl)
        t_snes = (profile.get("derived") or {}).get("t_snes_s")
        if t_snes and s.get("mean_wall_per_step") and s.get("steps_completed"):
            out_total = s["mean_wall_per_step"] * s["steps_completed"]
            val["out_wall_total_s"] = round(out_total, 1)
            val["profile_snes_s"] = round(t_snes, 1)
            val["wall_consistent"] = abs(out_total - t_snes) <= 0.25 * max(out_total, t_snes)
        if val:
            profile["validation"] = val
        result["profile"] = profile

    return result


# ── Experiment definitions ──────────────────────────────────────────────────

def discover_runs(base_dir, scales):
    """Find all solver/scale combinations under a results subdirectory."""
    runs = []
    if not base_dir.exists():
        return runs
    for solver_dir in sorted(base_dir.iterdir()):
        if not solver_dir.is_dir():
            continue
        solver = solver_dir.name
        for scale in scales:
            out_file = solver_dir / f"{scale}.out"
            if out_file.exists():
                runs.append((solver, scale, out_file))
    return runs


EXPERIMENTS = {
    "cockett": {
        "dir": "cockett",
        "scales": ["smoke", "sweep", "medium", "large", "huge", "mega"],
        "scale_meta": {
            "smoke": {"nodes": 1, "cpus": 104, "nx": 60, "nz": 78, "dof_approx": "2.2M"},
            "sweep": {"nodes": 1, "cpus": 104, "nx": 120, "nz": 156, "dof_approx": "18M"},
            "medium": {"nodes": 2, "cpus": 208, "nx": 152, "nz": 196, "dof_approx": "36M"},
            "large": {"nodes": 4, "cpus": 416, "nx": 192, "nz": 247, "dof_approx": "72M"},
            "huge": {"nodes": 8, "cpus": 832, "nx": 240, "nz": 312, "dof_approx": "144M"},
        },
    },
    "cockett_dq2": {
        "dir": "cockett",
        "scales": ["sweep_dq2", "medium_dq2", "huge_dq2"],
        "scale_meta": {
            "sweep_dq2": {"nodes": 1, "cpus": 104, "nx": 120, "nz": 156, "degree": 2, "dof_approx": "62M"},
            "medium_dq2": {"nodes": 2, "cpus": 208, "nx": 152, "nz": 196, "degree": 2, "dof_approx": "124M"},
            "huge_dq2": {"nodes": 8, "cpus": 832, "nx": 240, "nz": 312, "degree": 2, "dof_approx": "490M"},
        },
    },
    "murr_vertical": {
        "dir": "murrumbidgee",
        "scales": ["smoke", "sweep", "medium", "large"],
        "scale_meta": {
            "smoke": {"nodes": 1, "cpus": 104, "horiz_res": 1775, "layers": 150, "dof_approx": "20M"},
            "sweep": {"nodes": 2, "cpus": 208, "horiz_res": 1775, "layers": 300, "dof_approx": "40M"},
            "medium": {"nodes": 4, "cpus": 416, "horiz_res": 1775, "layers": 600, "dof_approx": "80M"},
            "large": {"nodes": 8, "cpus": 832, "horiz_res": 1775, "layers": 1200, "dof_approx": "160M"},
        },
    },
    "murr_horizontal": {
        "dir": "murr_horiz",
        "scales": ["h1", "h2", "h4", "h8"],
        "scale_meta": {
            "h1": {"nodes": 1, "cpus": 104, "horiz_res": 1775, "layers": 300, "dof_approx": "40M"},
            "h2": {"nodes": 2, "cpus": 208, "horiz_res": 1250, "layers": 300, "dof_approx": "80M"},
            "h4": {"nodes": 4, "cpus": 416, "horiz_res": 880, "layers": 300, "dof_approx": "160M"},
            "h8": {"nodes": 8, "cpus": 832, "horiz_res": 620, "layers": 300, "dof_approx": "320M"},
        },
    },
    "murr_strong": {
        "dir": "murr_strong",
        "scales": ["s1", "s2", "s4", "s8", "s16", "s32"],
        "scale_meta": {
            f"s{n}": {"nodes": n, "cpus": 104 * n, "horiz_res": 620,
                       "layers": 300, "dof_approx": "320M"}
            for n in (1, 2, 4, 8, 16, 32)
        },
    },
    "murr_hierarchy": {
        "dir": "murr_hierarchy",
        "scales": ["L1", "L2", "L3", "L4"],
        "scale_meta": {
            f"L{lev}": {"nodes": 8, "cpus": 832, "horiz_res": 620,
                        "layers": 300, "refinement_levels": lev}
            for lev in (1, 2, 3, 4)
        },
    },
}


def build_experiment_json(name, spec):
    """Parse all runs for an experiment and return a dict."""
    base = RESULTS / spec["dir"]
    runs = discover_runs(base, spec["scales"])

    parsed_runs = []
    for solver, scale, path in runs:
        print(f"  Parsing {name}/{solver}/{scale} ... ", end="")
        r = parse_file(path)
        if r is None:
            print("MISSING")
            continue
        # Override header with scale metadata where available
        meta = spec["scale_meta"].get(scale, {})
        r["header"]["scale"] = scale
        r["header"].setdefault("solver", solver)
        for k, v in meta.items():
            r["header"].setdefault(k, v)
        print(f"{r['outcome']}, {len(r['steps'])} steps")
        parsed_runs.append(r)

    return {
        "experiment": name,
        "scale_meta": spec["scale_meta"],
        "scales": spec["scales"],
        "runs": parsed_runs,
    }


def main():
    parser = argparse.ArgumentParser(description="Parse Richards scaling results to JSON")
    parser.add_argument("--outdir", default="parsed", help="Output directory for JSON files")
    parser.add_argument("--experiments", nargs="*", choices=list(EXPERIMENTS.keys()),
                        default=list(EXPERIMENTS.keys()),
                        help="Which experiments to parse")
    args = parser.parse_args()

    outdir = Path(args.outdir)
    outdir.mkdir(parents=True, exist_ok=True)

    for name in args.experiments:
        print(f"\n=== {name} ===")
        spec = EXPERIMENTS[name]
        data = build_experiment_json(name, spec)

        out_path = outdir / f"{name}.json"
        with open(out_path, "w") as f:
            json.dump(data, f, indent=2)
        print(f"  -> {out_path} ({len(data['runs'])} runs)")


if __name__ == "__main__":
    main()
