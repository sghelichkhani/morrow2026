"""Generate and inspect the PETSc jobs for the Stage 2 profile campaign.

The campaign uses an isolated result directory. It does not write to the
frozen scaling results. PETSc receives ``-log_view`` through ``PETSC_OPTIONS``
before petsc4py starts.
"""

from __future__ import annotations

import argparse
import json
import re
import shlex
import subprocess
from dataclasses import asdict, dataclass
from pathlib import Path


SOLVERS = (
    "bjacobi",
    "vlumping_inexact",
    "vlumping_linesmooth",
    "vlumping_hmg",
)

SHORT_NAMES = {
    "bjacobi": "bjac",
    "vlumping_inexact": "vli",
    "vlumping_linesmooth": "vll",
    "vlumping_hmg": "vlh",
}

EVENT_RE = re.compile(
    r"^(?P<name>(?:MG(?:Setup|Smooth|Resid|Interp) Level \d+)|"
    r"[A-Za-z][A-Za-z0-9]+)\s+"
    r"(?P<count>\d+)\s+\S+\s+(?P<time>[0-9.eE+-]+)\s+"
)
TOTAL_TIME_RE = re.compile(r"^Time \(sec\):\s+([0-9.eE+-]+)", re.MULTILINE)
STAGE_RE = re.compile(r"^--- Event Stage \d+: (?P<name>.+)$")
DONE_RE = re.compile(
    r"Done \| total NL (?P<nl>\d+) \| total L (?P<linear>\d+) \| "
    r"mean wall/step (?P<mean>[0-9.eE+-]+) s \| "
    r"peak RSS (?P<rss>[0-9.eE+-]+) MB \| steps (?P<steps>\d+) \| "
    r"failed (?P<failed>\d+) \| sim_time (?P<days>[0-9.eE+-]+) d"
)


@dataclass(frozen=True)
class Run:
    phase: str
    solver: str
    scale: str
    nodes: int
    horiz_res: int
    layers: int
    refinement_levels: int
    t_final: int
    walltime: str


def campaign_runs(phase: str) -> list[Run]:
    """Return the fixed run matrix for one campaign phase."""
    if phase == "smoke":
        return [
            Run(
                phase=phase,
                solver=solver,
                scale="smoke",
                nodes=1,
                horiz_res=1775,
                layers=150,
                refinement_levels=1 if solver == "vlumping_hmg" else 0,
                t_final=150,
                walltime="01:00:00",
            )
            for solver in SOLVERS
        ]

    if phase == "stage2":
        scales = {
            "h1": (1, 1775),
            "h8": (8, 620),
        }
        return [
            Run(
                phase=phase,
                solver=solver,
                scale=scale,
                nodes=nodes,
                horiz_res=horiz_res,
                layers=300,
                # This matches the existing horizontal-scaling generator.
                refinement_levels=2 if solver == "vlumping_hmg" else 0,
                t_final=2592000,
                walltime="06:00:00",
            )
            for solver in SOLVERS
            for scale, (nodes, horiz_res) in scales.items()
        ]

    raise ValueError(f"Unknown phase: {phase}")


def result_stem(run: Run) -> str:
    return f"{run.solver}-{run.scale}"


def petsc_options(run: Run, profile_path: Path) -> str:
    options = [f"-log_view :{profile_path}"]
    if run.solver.startswith("vlumping"):
        options.append("-BackwardEuler-Equation_lumped_pc_mg_log")
    return " ".join(options)


def make_script(
    run: Run,
    campaign_root: Path,
    scaling_dir: Path,
    gadopt_path: Path,
    gwassess_path: Path,
    omega_path: Path,
    firedrake_module: str,
) -> tuple[Path, dict[str, object]]:
    """Write one PBS script and return its manifest record."""
    phase_dir = campaign_root / run.phase
    job_dir = phase_dir / "jobs"
    result_dir = phase_dir / "results" / run.solver
    job_dir.mkdir(parents=True, exist_ok=True)
    result_dir.mkdir(parents=True, exist_ok=True)

    stem = result_stem(run)
    script_path = job_dir / f"{stem}.pbs"
    output_path = result_dir / f"{run.scale}.out"
    error_path = result_dir / f"{run.scale}.err"
    profile_path = result_dir / f"{run.scale}.profile"
    ncpus = 104 * run.nodes
    mem_gb = 500 * run.nodes

    driver_args = [
        "python",
        str(scaling_dir / "murrumbidgee_3d.py"),
        "--horiz-res",
        str(run.horiz_res),
        "--layers",
        str(run.layers),
        "--solver",
        run.solver,
        "--refinement-levels",
        str(run.refinement_levels),
        "--dt-init",
        "60",
        "--dt-max",
        "43200",
        "--dt-growth",
        "1.5",
        "--dt-shrink",
        "0.5",
        "--t-final",
        str(run.t_final),
        "--data-dir",
        str(scaling_dir / "murrumbidgee_data"),
        "--profile",
    ]
    command = shlex.join(driver_args)

    script = f"""#!/bin/bash
#PBS -N r2-{SHORT_NAMES[run.solver]}-{run.scale}
#PBS -P xd2
#PBS -q normalsr
#PBS -l walltime={run.walltime}
#PBS -l mem={mem_gb}GB
#PBS -l ncpus={ncpus}
#PBS -l jobfs=400GB
#PBS -l storage=scratch/xd2+gdata/fp50
#PBS -l wd
#PBS -W umask=0022
#PBS -o {output_path}
#PBS -e {error_path}

source /etc/profile
set -euo pipefail

module use /g/data/fp50/modules
module load {firedrake_module}

export PYTHONPATH={shlex.quote(str(gadopt_path))}:{shlex.quote(str(gwassess_path))}:{shlex.quote(str(omega_path))}:${{PYTHONPATH:-}}
export PYTHONDONTWRITEBYTECODE=1
export OMPI_MCA_io=ompio
export OMP_NUM_THREADS=1
export NCI_PROJECT=xd2

mkdir -p "$PBS_JOBFS/pyop2" "$PBS_JOBFS/tsfc" "$PBS_JOBFS/xdg"
export PYOP2_CACHE_DIR="$PBS_JOBFS/pyop2"
export FIREDRAKE_TSFC_KERNEL_CACHE_DIR="$PBS_JOBFS/tsfc"
export XDG_CACHE_HOME="$PBS_JOBFS/xdg"
export PETSC_OPTIONS={shlex.quote(petsc_options(run, profile_path))}

cd {shlex.quote(str(scaling_dir))}

echo "=== Job info ==="
echo "Phase: {run.phase}"
echo "Solver: {run.solver}"
echo "Scale: {run.scale}"
echo "Nodes: {run.nodes}"
echo "CPUs: $PBS_NCPUS"
echo "Firedrake module: {firedrake_module}"
echo "G-ADOPT source: {gadopt_path}"
echo "PETSC_OPTIONS: $PETSC_OPTIONS"
echo "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo "Command: {command}"
echo "================"

mpiexec -np "$PBS_NCPUS" bash -c '
  export MPLCONFIGDIR="$PBS_JOBFS/mpl.${{OMPI_COMM_WORLD_RANK:-0}}"
  mkdir -p "$MPLCONFIGDIR"
  exec "$@"
' _ {command}

test -s {shlex.quote(str(profile_path))}
echo "=== Job completed: $(date -u +%Y-%m-%dT%H:%M:%SZ) ==="
"""
    script_path.write_text(script)
    script_path.chmod(0o755)

    record = {
        **asdict(run),
        "script": str(script_path),
        "output": str(output_path),
        "error": str(error_path),
        "profile": str(profile_path),
        "command": command,
        "petsc_options": petsc_options(run, profile_path),
    }
    return script_path, record


def generate(args: argparse.Namespace) -> None:
    root = Path(args.campaign_root).resolve()
    records = []
    scripts = []
    for run in campaign_runs(args.phase):
        script, record = make_script(
            run,
            root,
            Path(args.scaling_dir).resolve(),
            Path(args.gadopt_path).resolve(),
            Path(args.gwassess_path).resolve(),
            Path(args.omega_path).resolve(),
            args.firedrake_module,
        )
        scripts.append(script)
        records.append(record)

    manifest_path = root / args.phase / "manifest.json"
    manifest_path.write_text(json.dumps(records, indent=2) + "\n")
    print(f"Generated {len(scripts)} scripts in {manifest_path.parent}")

    if not args.submit:
        return

    submitted = []
    for script, record in zip(scripts, records, strict=True):
        result = subprocess.run(
            ["qsub", str(script)], capture_output=True, text=True, check=False
        )
        if result.returncode:
            raise RuntimeError(
                f"qsub failed for {script}: {result.stderr.strip()}"
            )
        job_id = result.stdout.strip()
        submitted.append({"job_id": job_id, **record})
        print(f"Submitted {job_id}: {record['solver']} {record['scale']}")

    jobs_path = root / args.phase / "submitted_jobs.json"
    jobs_path.write_text(json.dumps(submitted, indent=2) + "\n")


def parse_profile(
    path: Path,
) -> tuple[float | None, dict[str, dict[str, dict[str, float]]]]:
    text = path.read_text(errors="replace")
    total_match = TOTAL_TIME_RE.search(text)
    total_time = float(total_match.group(1)) if total_match else None
    events_by_stage: dict[str, dict[str, dict[str, float]]] = {}
    stage = "Unscoped"
    for line in text.splitlines():
        stage_match = STAGE_RE.match(line)
        if stage_match:
            stage = stage_match.group("name")
            continue
        match = EVENT_RE.match(line)
        if not match:
            continue
        events_by_stage.setdefault(stage, {})[match.group("name")] = {
            "count": int(match.group("count")),
            "time": float(match.group("time")),
        }
    return total_time, events_by_stage


def inspect_record(record: dict[str, object]) -> dict[str, object]:
    output_path = Path(str(record["output"]))
    error_path = Path(str(record["error"]))
    profile_path = Path(str(record["profile"]))
    problems = []

    output = output_path.read_text(errors="replace") if output_path.exists() else ""
    error = error_path.read_text(errors="replace") if error_path.exists() else ""
    done = DONE_RE.search(output)
    total_time, events_by_stage = (None, {})
    if profile_path.exists() and profile_path.stat().st_size:
        total_time, events_by_stage = parse_profile(profile_path)
    else:
        problems.append("profile is absent or empty")
    main_events = events_by_stage.get("Main Stage", {})
    all_events = {
        name
        for stage_events in events_by_stage.values()
        for name in stage_events
    }

    if "=== Job completed:" not in output:
        problems.append("completion marker is absent")
    if not done:
        problems.append("driver summary is absent")
    elif int(done.group("failed")) != 0:
        problems.append(f"driver reports {done.group('failed')} failed steps")
    unexpected_error_lines = [
        line for line in error.splitlines()
        if line.strip()
        and not line.startswith("Loading firedrake/")
        and not line.startswith("  Loading requirement:")
        and not line.startswith("    petsc/")
    ]
    if unexpected_error_lines:
        problems.append("stderr contains text other than module messages")

    for required in ("KSPSolve", "PCSetUp", "PCApply"):
        if required not in main_events:
            problems.append(f"{required} event is absent")
    if record["solver"] == "bjacobi" and "PCApplyOnBlocks" not in main_events:
        problems.append("PCApplyOnBlocks event is absent")
    if str(record["solver"]).startswith("vlumping"):
        if not any(name.startswith("MGSetup Level") for name in all_events):
            problems.append("per-level MG setup events are absent")
        if not any(name.startswith("MGSmooth Level") for name in all_events):
            problems.append("per-level MG smoother events are absent")

    metrics: dict[str, object] = {
        "solver": record["solver"],
        "scale": record["scale"],
        "nodes": record["nodes"],
        "valid": not problems,
        "problems": problems,
        "profile_time": total_time,
        "events": main_events,
        "event_stages": events_by_stage,
    }
    if done:
        metrics["driver"] = {
            "nonlinear_iterations": int(done.group("nl")),
            "linear_iterations": int(done.group("linear")),
            "mean_step_seconds": float(done.group("mean")),
            "peak_rss_mb_per_rank": float(done.group("rss")),
            "steps": int(done.group("steps")),
            "failed_steps": int(done.group("failed")),
            "simulated_days": float(done.group("days")),
        }
    return metrics


def inspect(args: argparse.Namespace) -> None:
    phase_dir = Path(args.campaign_root).resolve() / args.phase
    records = json.loads((phase_dir / "manifest.json").read_text())
    summary = [inspect_record(record) for record in records]
    summary_path = phase_dir / "summary.json"
    summary_path.write_text(json.dumps(summary, indent=2) + "\n")
    for item in summary:
        state = "PASS" if item["valid"] else "FAIL"
        detail = "" if item["valid"] else ": " + "; ".join(item["problems"])
        print(f"{state:4s} {item['solver']:22s} {item['scale']}{detail}")
    if not all(item["valid"] for item in summary):
        raise SystemExit(1)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)

    generate_parser = subparsers.add_parser("generate")
    generate_parser.add_argument("--phase", choices=("smoke", "stage2"), required=True)
    generate_parser.add_argument("--campaign-root", required=True)
    generate_parser.add_argument("--scaling-dir", required=True)
    generate_parser.add_argument("--gadopt-path", required=True)
    generate_parser.add_argument(
        "--gwassess-path", default="/scratch/xd2/sg8812/gwassess"
    )
    generate_parser.add_argument(
        "--omega-path", default="/scratch/xd2/sg8812/omega"
    )
    generate_parser.add_argument("--firedrake-module", required=True)
    generate_parser.add_argument("--submit", action="store_true")
    generate_parser.set_defaults(function=generate)

    inspect_parser = subparsers.add_parser("inspect")
    inspect_parser.add_argument("--phase", choices=("smoke", "stage2"), required=True)
    inspect_parser.add_argument("--campaign-root", required=True)
    inspect_parser.set_defaults(function=inspect)
    return parser


def main() -> None:
    args = build_parser().parse_args()
    args.function(args)


if __name__ == "__main__":
    main()
