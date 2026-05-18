# Core Rules

Caveman AI Skills is a universal assistant layer for AI coding agents. It must remain project-safe, stack-agnostic, and non-invasive.

## Instruction priority

When working inside any software project, follow this priority order:

1. The current user request
2. Project-specific `AGENTS.md`, `CLAUDE.md`, `CODEX.md`, or equivalent files
3. Project-specific `.harness/`, `.agents/`, `.claude/`, `docs/`, `README.md`, and workflow files
4. Existing code patterns, tests, naming conventions, and architecture
5. Caveman AI Skills universal guidance

If there is any conflict, the project-specific instruction wins.

## Non-invasive rule

Do not modify, replace, delete, reorganize, or override existing project harness files unless the user explicitly asks for that exact change.

Protected examples include:

- `AGENTS.md`
- `CLAUDE.md`
- `CODEX.md`
- `.harness/`
- `.agents/`
- `.claude/`
- `.github/`
- `docs/`
- project workflow/checklist files

## Stack-agnostic rule

Do not assume a framework, programming language, database, package manager, test runner, or deployment platform.

Always detect the project first.

## Minimal-change rule

Prefer the smallest safe change that satisfies the request.

Avoid unrelated refactors, formatting-only rewrites, broad architecture changes, dependency swaps, or toolchain changes unless explicitly requested.

## Existing conventions rule

Follow the repository's existing style for:

- folder structure
- naming
- formatting
- error handling
- testing
- logging
- database access
- API patterns
- frontend components
- CI/CD workflows

## Human review rule

AI-generated code should be reviewed by a human before merge or deployment.

## Destructive action rule

Before recommending or running destructive actions, clearly explain the impact and safer alternatives. Examples include:

- force pushes
- database resets
- deleting files
- dropping tables
- rewriting history
- removing dependencies
- changing production configuration
