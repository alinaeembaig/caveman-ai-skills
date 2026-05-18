# Contributing

Thank you for improving Caveman AI Skills.

This project is designed to stay universal, project-safe, and stack-agnostic.

## Contribution principles

Before adding or editing a skill, make sure it follows these principles:

- It must not force a specific framework, language, database, or architecture.
- It must respect project-specific harnessing.
- It must prefer discovery before action.
- It must encourage minimal, focused changes.
- It must avoid destructive actions without explicit user approval.
- It must be useful across multiple technology stacks.

## Skill format

Each skill should live in:

```text
skills/<skill-name>/SKILL.md
```

Each `SKILL.md` should include frontmatter:

```md
---
name: skill-name
description: Clear description of when an AI coding agent should use this skill.
---
```

## Required safety wording

Every major skill should include a project harness safety section similar to:

```md
## Project harness safety

Project-specific instructions always override this skill. Read existing project guidance first. Do not modify project harness files unless explicitly requested.
```

## Good skill design

Good skills teach workflows:

- project discovery
- feature implementation
- bug fixing
- database review
- API review
- code review
- testing
- documentation

Avoid skills that hardcode one ecosystem unless the repository intentionally adds an optional ecosystem-specific extension.

## Pull request checklist

Before opening a PR:

- Skill descriptions are clear.
- No project-specific private information is included.
- No secrets or credentials are included.
- Project-harness safety is preserved.
- README or QUICKSTART is updated if behavior changes.
