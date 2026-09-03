# Claude-Code

A monorepo bringing together my projects in one place so I can open, run, and work on any of them from a single Claude Code session (including from an iPad browser via [Claude Code on the web](https://claude.ai/code)).

## Projects

| Project | Type | Description |
|---|---|---|
| [`projects/job-hunt`](projects/job-hunt) | Python | Automated pharma job search: scrapes listings, filters by commute distance, matches against a resume, and emails a daily digest. |
| [`projects/pa-stream-river-tracker`](projects/pa-stream-river-tracker) | Static HTML/JS | Real-time USGS water-data dashboard for southeastern PA streams and rivers. No build step — open `index.html` or serve with `python3 -m http.server`. |
| [`projects/genentech-interview`](projects/genentech-interview) | — | Placeholder — source repo (`GenentechInteview-`) is currently empty. |

Each project keeps its own README/config where one exists; see the linked folders for project-specific setup and usage.

## Running things from an iPad

Open this repository in a Claude Code web session (claude.ai/code) from Safari/Chrome on your iPad. A [`SessionStart` hook](.claude/hooks/session-start.sh) automatically installs each project's dependencies (currently: `projects/job-hunt`'s Python packages) when the session starts, so you can start running code immediately — no local setup needed.

- **job-hunt**: `cd projects/job-hunt && python3 main.py` (needs a `.env` — see `.env.example`)
- **pa-stream-river-tracker**: `cd projects/pa-stream-river-tracker && python3 -m http.server 8000`, then open the forwarded port

## Repo layout

```
projects/
  job-hunt/                  # Python job-search alert app
  pa-stream-river-tracker/   # Static USGS water-data dashboard
  genentech-interview/       # Placeholder (source repo is empty)
.github/workflows/           # CI/scheduled workflows (namespaced per project)
.claude/hooks/                # Session start hook (installs deps automatically)
```
