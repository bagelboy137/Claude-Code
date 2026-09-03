#!/usr/bin/env bash
# run_daily.sh — wrapper for cron
#
# Add to crontab (runs at 8 AM every day):
#   crontab -e
#   0 8 * * * /bin/bash /path/to/Claude-Code/projects/job-hunt/run_daily.sh
#
# To use a virtual environment, uncomment and adjust the line below:
# source /path/to/Claude-Code/projects/job-hunt/.venv/bin/activate

set -euo pipefail
cd "$(dirname "$0")"

python3 main.py
