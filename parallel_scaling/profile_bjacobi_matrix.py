"""Generate and inspect the complete paper BJac-ILU campaign.

The campaign writes to an isolated directory. It covers every scale in the
paper's Cockett, Murrumbidgee weak-scaling, and Murrumbidgee strong-scaling
experiments. PETSc receives ``-log_view`` before petsc4py starts.
"""

from __future__ import annotations

import argparse
import json
import re
import shlex
import subprocess
from dataclasses import asdict, dataclass
from pathlib import Path


COCKETT_DONE_RE = re.compile(
    r"Done \| total NL (?P<nl>\d+) \| total L (?P<linear>\d+) \| "
    r"mean wall/step (?P<mean>[0-9.eE+-]+) s \| "
    r"peak RSS (?P<rss>[0-9.eE+-]+) MB"
)
MURR_DONE_RE = re.compile(
    r"Done \| total NL (?P<nl>\d+) \| total L (?P<linear>\d+) \| "
    r"mean wall/step (?P<mean>[0-9.eE+-]+) s \| "
    r"peak RSS (?P<rss>[0-9.eE+-]+) MB \| steps (?P<steps>\d+) \| "
    r"failed (?P<failed>\d+) \| sim_time (?P<days>[0-9.eE+-]+) d"
)
COCKETT_STEP_RE = re.compile(r"\| step (?P<step>\d+)/(?P<total>\d+) \|")
EVENT_RE = re.compile(
    r"^(?P<name>[A-Za-z][A-Za-z0-9]+)\s+"
    r"(?P<count>\d+)\s+\S+\s+(?P<time>[0-9.eE+-]+)\s+"
)
TOTAL_TIME_RE = re.compile(r"^Time \(sec\):\s+([0-9.eE+-]+)", re.MULTILINE)
STAGE_RE = re.compile(r"^--- Event Stage \d+: (?P<name>.+)$")
PBS_EXIT_RE = re.compile(
    r"^\s*Exit Status:\s+(?P<status>-?\d+)(?:\s+\([^\n]*\))?\s*$",
    re.MULTILINE,
)
PBS_WALL_RE = re.compile(r"Walltime Used:\s+(?P<wall>\S+)")
PBS_MEMORY_RE = re.compile(r"Memory Used:\s+(?P<memory>\S+)")


@dataclass(frozen=True)
class Run:
    phase: str
    case: str
    scale: str
    nodes: int
    walltime: str
    nx: int | None = None
    nz: int | None = None
    steps: int | None = None
    horiz_res: int | None = None
    layers: int | None = None


def smoke_runs() -> list[Run]:
    """Return the single validation job."""
    return [
        Run(
            phase="smoke",
            case="cockett",
            scale="smoke",
            nodes=1,
            walltime="01:00:00",
            nx=64,
            nz=78,
            steps=10,
        )
    ]


def production_runs() -> list[Run]:
    """Return every paper scale for BJac-ILU(0)."""
    runs = [
        Run("production", "cockett", "sweep", 1, "03:00:00", nx=120, nz=156, steps=100),
        Run("production", "cockett", "medium", 2, "03:00:00", nx=152, nz=196, steps=100),
        Run("production", "cockett", "large", 8, "03:00:00", nx=240, nz=312, steps=100),
    ]

    vertical = {
        "smoke": (1, 1775, 150),
        "sweep": (2, 1775, 300),
        "medium": (4, 1775, 600),
        "large": (8, 1775, 1200),
    }
    horizontal = {
        "h1": (1, 1775, 300),
        "h2": (2, 1250, 300),
        "h4": (4, 880, 300),
        "h8": (8, 620, 300),
    }
    strong = {
        "s1": 1,
        "s2": 2,
        "s4": 4,
        "s8": 8,
        "s16": 16,
        "s32": 32,
    }

    runs.extend(
        Run(
            "production", "murr_vertical", scale, nodes, "06:00:00",
            horiz_res=horiz_res, layers=layers,
        )
        for scale, (nodes, horiz_res, layers) in vertical.items()
    )
    runs.extend(
        Run(
            "production", "murr_horizontal", scale, nodes, "06:00:00",
            horiz_res=horiz_res, layers=layers,
        )
        for scale, (nodes, horiz_res, layers) in horizontal.items()
    )
    runs.extend(
        Run(
            "production", "murr_strong", scale, nodes, "03:00:00",
            horiz_res=620, layers=300,
        )
        for scale, nodes in strong.items()
    )
    return runs


def phase_runs(phase: str) -> list[Run]:
    if phase == "smoke":
        return smoke_runs()
    if phase == "production":
        return production_runs()
    raise ValueError(f"Unknown phase: {phase}")


def command_for(run: Run, scaling_dir: Path) -> list[str]:
    """Return the driver command for one run."""
    if run.case == "cockett":
        return [
            "python",
            str(scaling_dir / "cockett_3d.py"),
            "--nx", str(run.nx),
            "--nz", str(run.nz),
            "--degree", "1",
            "--dt", "300",
            "--steps", str(run.steps),
            "--solver", "bjacobi",
            "--refinement-levels", "0",
            "--profile",
        ]

    return [
        "python",
        str(scaling_dir / "murrumbidgee_3d.py"),
        "--horiz-res", str(run.horiz_res),
        "--layers", str(run.layers),
        "--solver", "bjacobi",
        "--refinement-levels", "0",
        "--dt-init", "60",
        "--dt-max", "43200",
        "--dt-growth", "1.5",
        "--dt-shrink", "0.5",
        "--t-final", "2592000",
        "--data-dir", str(scaling_dir / "murrumbidgee_data"),
        "--profile",
    ]


def make_script(
    run: Run,
    campaign_root: Path,
    scaling_dir: Path,
    gadopt_path: Path,
    gwassess_path: Path,
    omega_path: Path,
    firedrake_module: str,
) -> tuple[Path, dict[str, object]]:
    """Write one isolated PBS job script."""
    phase_dir = campaign_root / run.phase
    job_dir = phase_dir / "jobs"
    result_dir = phase_dir / "results" / run.case / run.scale
    job_dir.mkdir(parents=True, exist_ok=True)
    result_dir.mkdir(parents=True, exist_ok=True)

    stem = f"{run.case}-{run.scale}"
    script_path = job_dir / f"{stem}.pbs"
    output_path = result_dir / "run.out"
    error_path = result_dir / "run.err"
    profile_path = result_dir / "run.profile"
    ncpus = 104 * run.nodes
    mem_gb = 500 * run.nodes
    command = shlex.join(command_for(run, scaling_dir))
    petsc_options = f"-log_view :{profile_path}"
    short_case = {
        "cockett": "c",
        "murr_vertical": "v",
        "murr_horizontal": "h",
        "murr_strong": "s",
    }[run.case]

    script = f"""#!/bin/bash
#PBS -N rbj-{short_case}-{run.scale}
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
export PETSC_OPTIONS={shlex.quote(petsc_options)}

cd {shlex.quote(str(scaling_dir))}

echo "=== Job info ==="
echo "Phase: {run.phase}"
echo "Case: {run.case}"
echo "Scale: {run.scale}"
echo "Solver: bjacobi"
echo "Nodes: {run.nodes}"
echo "CPUs: $PBS_NCPUS"
echo "Walltime limit: {run.walltime}"
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
    return script_path, {
        **asdict(run),
        "solver": "bjacobi",
        "script": str(script_path),
        "output": str(output_path),
        "error": str(error_path),
        "profile": str(profile_path),
        "command": command,
        "petsc_options": petsc_options,
    }


def generate(args: argparse.Namespace) -> None:
    root = Path(args.campaign_root).resolve()
    records = []
    scripts = []
    for run in phase_runs(args.phase):
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

    phase_dir = root / args.phase
    manifest_path = phase_dir / "manifest.json"
    manifest_path.write_text(json.dumps(records, indent=2) + "\n")
    print(f"Generated {len(scripts)} scripts in {phase_dir}")
    if not args.submit:
        return

    submitted = []
    for script, record in zip(scripts, records, strict=True):
        result = subprocess.run(
            ["qsub", str(script)], capture_output=True, text=True, check=False
        )
        if result.returncode:
            raise RuntimeError(f"qsub failed for {script}: {result.stderr.strip()}")
        job_id = result.stdout.strip()
        submitted.append({"job_id": job_id, **record})
        print(f"Submitted {job_id}: {record['case']} {record['scale']}")
    (phase_dir / "submitted_jobs.json").write_text(
        json.dumps(submitted, indent=2) + "\n"
    )


def parse_profile(path: Path) -> tuple[float | None, dict[str, dict[str, float]]]:
    """Return total time and main-stage PETSc events."""
    text = path.read_text(errors="replace")
    total_match = TOTAL_TIME_RE.search(text)
    total_time = float(total_match.group(1)) if total_match else None
    stage = "Unscoped"
    main_events: dict[str, dict[str, float]] = {}
    for line in text.splitlines():
        if stage_match := STAGE_RE.match(line):
            stage = stage_match.group("name")
            continue
        if stage != "Main Stage":
            continue
        if event_match := EVENT_RE.match(line):
            main_events[event_match.group("name")] = {
                "count": int(event_match.group("count")),
                "time": float(event_match.group("time")),
            }
    return total_time, main_events


def walltime_seconds(value: str) -> int:
    """Convert a PBS HH:MM:SS walltime to seconds."""
    hours, minutes, seconds = (int(part) for part in value.split(":"))
    return hours * 3600 + minutes * 60 + seconds


def inspect_record(record: dict[str, object]) -> dict[str, object]:
    """Inspect one completed or failed result without changing it."""
    output_path = Path(str(record["output"]))
    error_path = Path(str(record["error"]))
    profile_path = Path(str(record["profile"]))
    output = output_path.read_text(errors="replace") if output_path.exists() else ""
    error = error_path.read_text(errors="replace") if error_path.exists() else ""
    pbs_exit = PBS_EXIT_RE.search(output)
    pbs_wall = PBS_WALL_RE.search(output)
    pbs_memory = PBS_MEMORY_RE.search(output)
    completed = "=== Job completed:" in output

    result: dict[str, object] = {
        "case": record["case"],
        "scale": record["scale"],
        "nodes": record["nodes"],
        "walltime_limit": record["walltime"],
        "pbs_exit_status": int(pbs_exit.group("status")) if pbs_exit else None,
        "pbs_walltime": pbs_wall.group("wall") if pbs_wall else None,
        "pbs_memory": pbs_memory.group("memory") if pbs_memory else None,
        "script_completed": completed,
        "stderr_bytes": len(error.encode()),
    }

    done = COCKETT_DONE_RE.search(output) if record["case"] == "cockett" else MURR_DONE_RE.search(output)
    if done and completed and profile_path.exists() and profile_path.stat().st_size:
        total_time, events = parse_profile(profile_path)
        problems = []
        for required in ("PCSetUpOnBlocks", "PCApplyOnBlocks", "KSPSolve"):
            if required not in events:
                problems.append(f"{required} event is absent")
        if record["case"] == "cockett":
            steps = [int(match.group("step")) for match in COCKETT_STEP_RE.finditer(output)]
            expected_steps = int(record["steps"])
            if not steps or steps[-1] != expected_steps:
                problems.append(f"last Cockett step is {steps[-1] if steps else None}")
            failed_steps = 0
            simulated_days = None
        else:
            expected_steps = 75
            failed_steps = int(done.group("failed"))
            simulated_days = float(done.group("days"))
            if int(done.group("steps")) != expected_steps:
                problems.append(f"Murrumbidgee completed {done.group('steps')} steps")
            if simulated_days < 30.0:
                problems.append(f"Murrumbidgee reached only {simulated_days} days")
        result.update({
            "outcome": "success" if not problems else "invalid_success",
            "problems": problems,
            "nonlinear_iterations": int(done.group("nl")),
            "linear_iterations": int(done.group("linear")),
            "mean_step_seconds": float(done.group("mean")),
            "peak_rss_mb_per_rank": float(done.group("rss")),
            "steps": expected_steps,
            "failed_attempts": failed_steps,
            "simulated_days": simulated_days,
            "profile_time": total_time,
            "events": events,
        })
        return result

    combined = output + "\n" + error
    lower = combined.lower()
    exhausted_walltime = bool(
        pbs_exit
        and pbs_wall
        and int(pbs_exit.group("status")) != 0
        and walltime_seconds(pbs_wall.group("wall"))
        >= walltime_seconds(str(record["walltime"])) - 60
    )
    if not output_path.exists() and not error_path.exists():
        outcome = "not_started"
    elif exhausted_walltime:
        outcome = "walltime"
    elif any(token in lower for token in ("out of memory", "oom-kill", "oom_kill", "killed process")):
        outcome = "oom"
    elif any(token in lower for token in ("ksp_diverged", "snes_diverged", "dt shrunk below 1 s", "failed — no successful steps")):
        outcome = "diverged"
    elif pbs_exit:
        outcome = "failed"
    else:
        outcome = "running_or_queued"
    result.update({
        "outcome": outcome,
        "problems": ["no validated completion record"],
        "stderr_tail": "\n".join(error.splitlines()[-20:]),
    })
    return result


def inspect(args: argparse.Namespace) -> None:
    phase_dir = Path(args.campaign_root).resolve() / args.phase
    records = json.loads((phase_dir / "manifest.json").read_text())
    summary = [inspect_record(record) for record in records]
    (phase_dir / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
    for item in summary:
        print(
            f"{item['outcome']:18s} {item['case']:18s} {item['scale']:7s} "
            f"exit={item['pbs_exit_status']} wall={item['pbs_walltime']}"
        )


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)

    generate_parser = subparsers.add_parser("generate")
    generate_parser.add_argument("--phase", choices=("smoke", "production"), required=True)
    generate_parser.add_argument("--campaign-root", required=True)
    generate_parser.add_argument("--scaling-dir", required=True)
    generate_parser.add_argument("--gadopt-path", required=True)
    generate_parser.add_argument("--gwassess-path", default="/scratch/xd2/sg8812/gwassess")
    generate_parser.add_argument("--omega-path", default="/scratch/xd2/sg8812/omega")
    generate_parser.add_argument("--firedrake-module", required=True)
    generate_parser.add_argument("--submit", action="store_true")
    generate_parser.set_defaults(function=generate)

    inspect_parser = subparsers.add_parser("inspect")
    inspect_parser.add_argument("--phase", choices=("smoke", "production"), required=True)
    inspect_parser.add_argument("--campaign-root", required=True)
    inspect_parser.set_defaults(function=inspect)
    return parser


def main() -> None:
    args = build_parser().parse_args()
    args.function(args)


if __name__ == "__main__":
    main()
