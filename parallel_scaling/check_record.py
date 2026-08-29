#!/usr/bin/env python3
"""Check that the experimental record supports every number the paper reports.

Run this before regenerating figures and tables, and again before submission.
It fails loudly rather than letting a gap become a missing point in a figure.

For every (experiment, preset, scale) the paper reports, it checks that:

  * the run exists in the parsed record;
  * a run that completed carries a PETSc `-log_view` profile, because the
    setup and apply shares in the performance table come from it;
  * the parser's own cross-checks between the profile and the stdout agree
    (`steps_match`, `nl_match`, `wall_consistent`);
  * a completed run has the counters the tables divide by.

It also reports, without failing, the runs that did not complete. Those are
results in their own right — block-Jacobi completes no timestep in the
saturated seasonal regime, and that is the point of the experiment — so they
are listed for inspection rather than treated as errors.

    python3 check_record.py           # summary, exit 1 on any error
    python3 check_record.py --verbose # list every run checked
"""

import argparse
import json
import sys
from pathlib import Path

import reported

PARSED = Path(__file__).resolve().parent / "parsed"

# Outcomes that mean the solver ran to the end of the experiment.
COMPLETED = {"success"}
# Outcomes that are legitimate reported results rather than gaps.
EXPECTED_FAILURES = {"diverged", "oom", "walltime", "incomplete"}
# A run stopped by hand. Never a reportable outcome: it says nothing about the
# solver, so if one of these backs a reported number, that is an error.
OPERATOR_STOPPED = {"killed"}


def load(key):
    path = PARSED / f"{key}.json"
    if not path.exists():
        return None
    return json.loads(path.read_text())


def index(doc):
    return {(r["header"].get("solver"), r["header"].get("scale")): r
            for r in doc["runs"]}


def check_run(run):
    """Return (errors, notes) for one reported run."""
    errors, notes = [], []
    outcome = run.get("outcome")

    if outcome in OPERATOR_STOPPED:
        errors.append(f"outcome is '{outcome}': stopped by hand, not by the "
                      f"solver, so it cannot back a reported number")
        return errors, notes

    if outcome not in COMPLETED:
        if outcome in EXPECTED_FAILURES:
            notes.append(f"did not complete ({outcome})")
        else:
            errors.append(f"unrecognised outcome '{outcome}'")
        return errors, notes

    summary = run.get("summary") or {}
    for field in ("total_nl", "total_linear", "steps_completed",
                  "mean_wall_per_step", "peak_rss_mb"):
        if not summary.get(field):
            errors.append(f"completed but '{field}' is missing or zero")

    profile = run.get("profile")
    if not profile:
        errors.append("completed but carries no PETSc profile")
        return errors, notes

    derived = profile.get("derived") or {}
    for field in ("t_snes_s", "pc_setup_pct", "pc_apply_pct"):
        if derived.get(field) is None:
            errors.append(f"profile has no '{field}'")

    validation = profile.get("validation") or {}
    for flag, meaning in (("steps_match", "profile and stdout disagree on the "
                                          "number of timesteps"),
                          ("nl_match", "profile and stdout disagree on the "
                                       "number of Newton steps"),
                          ("wall_consistent", "profile wall time disagrees "
                                              "with the stdout total")):
        if flag in validation and not validation[flag]:
            errors.append(meaning)

    return errors, notes


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--verbose", action="store_true")
    args = ap.parse_args()

    n_checked = n_error = 0
    missing_docs, problems, incomplete = [], [], []

    for exp_key, experiment in reported.EXPERIMENTS.items():
        doc = load(experiment.key)
        if doc is None:
            missing_docs.append(experiment.key)
            continue
        runs = index(doc)
        for preset in reported.presets_for(exp_key):
            for scale in experiment.scales:
                if not reported.attempted(exp_key, preset.key, scale):
                    continue
                run = runs.get((preset.key, scale))
                where = f"{exp_key}/{preset.key}/{scale}"
                n_checked += 1
                if run is None:
                    problems.append((where, "no run in the parsed record"))
                    n_error += 1
                    continue
                errors, notes = check_run(run)
                for e in errors:
                    problems.append((where, e))
                n_error += len(errors)
                for note in notes:
                    incomplete.append((where, note))
                if args.verbose and not errors:
                    state = notes[0] if notes else "ok"
                    print(f"  {where:58s} {state}")

    print()
    if missing_docs:
        print("MISSING PARSED FILES")
        for key in missing_docs:
            print(f"  parsed/{key}.json")
        print()

    if incomplete:
        print(f"DID NOT COMPLETE ({len(incomplete)}) — reported as outcomes, "
              f"not errors")
        for where, note in incomplete:
            print(f"  {where:58s} {note}")
        print()

    if problems:
        print(f"ERRORS ({len(problems)})")
        for where, message in problems:
            print(f"  {where:58s} {message}")
        print()

    print(f"checked {n_checked} reported runs, "
          f"{len(incomplete)} did not complete, {n_error} errors")
    return 1 if (n_error or missing_docs) else 0


if __name__ == "__main__":
    sys.exit(main())
