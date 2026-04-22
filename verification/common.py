"""Shared setup for verification drivers.

Adds the richardson g-adopt worktree and gwassess to sys.path so that
any driver can simply `from verification.common import *` (or import
this module first and then do `from gadopt import *` / `import
gwassess`). Keeps paths in exactly one place so that the whole paper
study can be rebased onto a different worktree by editing this file.
"""
from __future__ import annotations

import json
import os
import sys
from pathlib import Path

HOME = Path.home()
RICHARDSON = HOME / "Workplace" / "g-adopt-worktrees" / "sghelichkhani" / "richardson"
GWASSESS = HOME / "Workplace" / "gwassess"

for p in (str(RICHARDSON), str(GWASSESS)):
    if p not in sys.path:
        sys.path.insert(0, p)

REPO_ROOT = Path(__file__).resolve().parent.parent
FIGURE_ROOT = REPO_ROOT / "figures"


def save_json(path: os.PathLike, payload: dict) -> None:
    """Write ``payload`` as pretty JSON to ``path``, creating parents."""
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True))


def load_json(path: os.PathLike) -> dict:
    return json.loads(Path(path).read_text())
