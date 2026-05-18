# Caveman AI Skills

**Universal AI engineering skills for Codex, Claude Code, and project-safe agentic development.**

Caveman AI Skills is a stack-agnostic engineering skill kit for AI coding agents. It gives tools like Codex and Claude Code a reliable way to analyze projects, understand existing architecture, implement changes safely, review code, work with databases, prepare pull requests, and document decisions without overriding the rules of the actual project.

The goal is simple: **make AI coding agents more consistent, safer, and more useful across any programming language, framework, database, or deployment environment.**

---

## Why this exists

AI coding agents are powerful, but they often start every project like a fresh assistant. You may repeatedly need to explain the same rules:

- Understand the project before editing.
- Follow existing architecture.
- Do not rewrite unrelated files.
- Do not introduce a new framework without permission.
- Respect project documentation and harness files.
- Run the correct tests and builds.
- Explain risks before destructive changes.
- Prepare clean PR summaries.

Caveman AI Skills turns those repeated instructions into reusable skills and documentation that can be installed globally or copied into any project.

---

## Core promise

> **Universal skills are guidance, not project law. The actual project harness always wins.**

This repository is intentionally designed to be non-invasive. It must not disturb existing project harnessing, project instructions, or repository-specific workflows.

When working inside a project, AI agents should follow this priority order:

1. Current user instruction
2. Project-specific `AGENTS.md`, `CLAUDE.md`, `CODEX.md`, or similar files
3. Project-specific `.harness/`, `.agents/`, `.claude/`, `docs/`, `README.md`, and workflow files
4. Existing code patterns and tests
5. Caveman AI Skills universal guidance

If there is any conflict, the project-specific harness wins.

---

## What you achieve with this repo

### 1. Better project discovery

Agents learn to inspect the repository first, detect the stack, locate important files, identify architecture, discover build/test commands, and avoid blind edits.

### 2. Stack-agnostic engineering workflow

This repo is not limited to Laravel, PHP, Node.js, React, Python, Java, Go, .NET, WordPress, Shopify, or any one ecosystem. The skills are based on engineering workflows, not framework names.

### 3. Safer implementation

Agents are instructed to make minimal, focused changes, follow existing conventions, avoid unrelated rewrites, protect data, and document risks.

### 4. Consistent debugging

The bug-fixing workflow encourages root-cause analysis, reproduction steps, log inspection, regression checks, and clear explanation of the fix.

### 5. Better database work

The database skill covers SQL and NoSQL thinking: query correctness, indexes, migrations, transactions, ORM behavior, data integrity, and performance.

### 6. Cleaner PRs and reviews

The Git and PR workflow helps agents create concise summaries, test notes, rollback notes, and review-friendly change explanations.

### 7. Compatibility with multiple agents

The skill format is intentionally simple and portable: each skill lives in a folder with a `SKILL.md` file. This makes it suitable for Codex, Claude Code, and other agentic coding tools that support skill-style workflows.

---

## Repository structure

```text
caveman-ai-skills/
  README.md
  CORE_RULES.md
  AGENTS.template.md
  CLAUDE.template.md
  CODEX.template.md

  skills/
    project-discovery/
      SKILL.md
    architecture-analyzer/
      SKILL.md
    feature-implementation/
      SKILL.md
    bug-fixer/
      SKILL.md
    database-engineer/
      SKILL.md
    api-engineer/
      SKILL.md
    frontend-engineer/
      SKILL.md
    testing-engineer/
      SKILL.md
    security-reviewer/
      SKILL.md
    performance-reviewer/
      SKILL.md
    devops-deployment/
      SKILL.md
    git-pr-workflow/
      SKILL.md
    documentation-writer/
      SKILL.md
    code-reviewer/
      SKILL.md

  scripts/
    install-codex.sh
    install-claude.sh
    install-project-codex.sh
    install-project-claude.sh
```

---

## Installation

### Global Codex-style installation

Copy all skills into your global agent skills directory:

```bash
bash scripts/install-codex.sh
```

This installs skills into:

```text
~/.agents/skills/
```

### Global Claude Code-style installation

```bash
bash scripts/install-claude.sh
```

This installs skills into:

```text
~/.claude/skills/
```

### Project-level Codex installation

From inside a project repository:

```bash
bash /path/to/caveman-ai-skills/scripts/install-project-codex.sh
```

This copies skills into:

```text
project/.agents/skills/
```

### Project-level Claude Code installation

From inside a project repository:

```bash
bash /path/to/caveman-ai-skills/scripts/install-project-claude.sh
```

This copies skills into:

```text
project/.claude/skills/
```

---

## Recommended usage

### For a new project

Ask your coding agent:

```text
Use the project-discovery workflow. Analyze this repository, detect the stack, identify architecture, find build/test commands, and suggest a project-safe AGENTS.md without modifying existing harness files.
```

### For a feature

```text
Use the feature-implementation workflow. Follow the project harness first, inspect existing patterns, make minimal changes, add/update tests where appropriate, and prepare a PR summary.
```

### For a bug

```text
Use the bug-fixer workflow. Reproduce or reason about the issue, identify the root cause, implement the smallest safe fix, and explain regression risks.
```

### For database work

```text
Use the database-engineer workflow. Review query correctness, indexes, joins, migrations, transactions, ORM behavior, and data integrity before making changes.
```

### For PR review

```text
Use the code-reviewer workflow. Review changed files for correctness, safety, maintainability, performance, security, and missing tests.
```

---

## Design philosophy

Caveman AI Skills follows a few strict principles:

- **Project-safe:** never override existing project harnessing.
- **Stack-agnostic:** support any language, framework, database, or toolchain.
- **Minimal-change first:** prefer focused edits over broad rewrites.
- **Discovery before action:** inspect before modifying.
- **Existing conventions win:** follow the repository style already in place.
- **Human review remains required:** AI assistance does not replace engineering review.
- **Reusable workflows:** teach agents how to work, not which framework to force.

---

## What this repo is not

This repo is not:

- A framework boilerplate.
- A Laravel-only or Node-only harness.
- A replacement for project documentation.
- A replacement for human code review.
- A guarantee that an AI agent will always make correct changes.
- A tool that should modify existing harness files automatically.

It is a reusable guidance layer for safer, more consistent AI-assisted engineering.

---

## SEO keywords

AI coding skills, Codex skills, Claude Code skills, agentic development, AI engineering harness, AI coding agent workflows, project-safe AI development, universal coding agent skills, AI software engineering workflow, AI code review, AI debugging workflow, AI database engineering, AI PR workflow, stack-agnostic AI coding.

---

## License

This project is intended to be shared and reused. Add your preferred license file before public distribution if needed.
