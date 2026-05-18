# Claude Code Project Instructions

This file is a project-specific guide for Claude Code.

## Important priority rule

Project instructions in this repository override any global skills or reusable external skill packs.

Claude should read and follow, in order:

1. Current user request
2. This file
3. Other project harness files such as `AGENTS.md`, `CODEX.md`, `.harness/`, `.claude/`, `docs/`
4. Existing code patterns
5. Global or universal skills

## Project context

Add project purpose, business rules, and important domain terms here.

## Coding expectations

- Understand the existing structure before changing code.
- Prefer minimal safe edits.
- Preserve existing architecture.
- Avoid unrelated formatting changes.
- Ask before destructive or broad refactors.
- Explain assumptions and risks.

## Commands

Add project commands here.

```bash
# install

# test

# build

# lint
```

## Review checklist

- Does the change match the requested scope?
- Are tests updated where needed?
- Are edge cases handled?
- Are security and data integrity risks considered?
- Is the PR summary clear?
