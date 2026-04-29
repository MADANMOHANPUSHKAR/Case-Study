# Ralph Agent Integration

## What This Is

A project to integrate the "Ralph" autonomous AI agent loop into the repository and develop a CLI/automation wrapper for it. It allows for automated processing of development tasks (user stories) from a PRD file using an iterative AI loop.

## Core Value

Seamless, autonomous execution of development tasks driven by a PRD and progress log.

## Requirements

### Validated

(None yet — ship to validate)

### Active

- [ ] Develop a CLI/automation wrapper for the Ralph script.
- [ ] Integrate Ralph into the repository's development workflow.
- [ ] Enable Ralph to process user stories from `prd.json`.
- [ ] Ensure Ralph correctly updates `progress.txt` and `prd.json`.

### Out of Scope

- **Building a new AI model**: We are using existing tools (amp/claude) via Ralph. — Focus is on automation and integration, not model development.

## Context

- Ralph is a bash script (`ralph.sh`) that runs an AI agent loop.
- It uses `prd.json` for requirements and `progress.txt` for memory/patterns.
- it supports `amp` and `claude` as the underlying AI tool.
- The user has already set up the initial scripts in `scripts/ralph/`.

## Constraints

- **Tech Stack**: Bash for core loop, JS/TS for the wrapper, JSON for the PRD. — Driven by existing Ralph implementation.
- **Dependencies**: Requires `amp` or `claude` CLI to be available in the environment. — Core dependency for Ralph.

## Key Decisions

| Decision | Rationale | Outcome |
|----------|-----------|---------|
| CLI/Automation Wrapper | To provide a more robust interface for interacting with the Ralph loop. | — Pending |
| Repository Integration | To allow Ralph to work directly on the codebase it resides in. | — Pending |

## Evolution

This document evolves at phase transitions and milestone boundaries.

**After each phase transition** (via `/gsd-transition`):
1. Requirements invalidated? → Move to Out of Scope with reason
2. Requirements validated? → Move to Validated with phase reference
3. New requirements emerged? → Add to Active
4. Decisions to log? → Add to Key Decisions
5. "What This Is" still accurate? → Update if drifted

**After each milestone** (via `/gsd-complete-milestone`):
1. Full review of all sections
2. Core Value check — still the right priority?
3. Audit Out of Scope — reasons still valid?
4. Update Context with current state

---
*Last updated: 2026-04-29 after initialization*
