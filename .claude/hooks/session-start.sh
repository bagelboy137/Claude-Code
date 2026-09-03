#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

REPO_ROOT="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)}"

# projects/job-hunt (Python)
JOB_HUNT_DIR="$REPO_ROOT/projects/job-hunt"
if [ -f "$JOB_HUNT_DIR/requirements.txt" ]; then
  echo "Installing job-hunt Python dependencies..."
  pip install -q -r "$JOB_HUNT_DIR/requirements.txt"
  # pdfplumber -> pdfminer.six -> cryptography needs the cffi backend; the
  # base image's system cryptography package is missing it.
  python3 -c "import _cffi_backend" 2>/dev/null || pip install -q cffi
fi

# projects/pa-stream-river-tracker is static HTML/JS with no build step — nothing to install.

echo "Session start hook complete."
