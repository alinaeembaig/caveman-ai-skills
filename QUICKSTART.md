# Quickstart

This guide helps you start using Caveman AI Skills with Codex-style agents, Claude Code, or project-level AI harnessing.

## 1. Clone the repository

```bash
git clone https://github.com/alinaeembaig/caveman-ai-skills.git
cd caveman-ai-skills
```

## 2. Install globally for Codex-style agents

```bash
bash scripts/install-codex.sh
```

Skills will be copied to:

```text
~/.agents/skills/
```

## 3. Install globally for Claude Code

```bash
bash scripts/install-claude.sh
```

Skills will be copied to:

```text
~/.claude/skills/
```

## 4. Install inside a specific project

For Codex-style project skills:

```bash
cd /path/to/your-project
bash /path/to/caveman-ai-skills/scripts/install-project-codex.sh
```

For Claude Code project skills:

```bash
cd /path/to/your-project
bash /path/to/caveman-ai-skills/scripts/install-project-claude.sh
```

## 5. Recommended first prompt

After installing, open your project in your AI coding tool and ask:

```text
Use the project-discovery workflow. Read the project harness first, detect the stack, map the architecture, find build/test commands, and summarize the safest workflow for this repository. Do not modify existing harness files.
```

## 6. Example feature prompt

```text
Use the feature-implementation workflow. Follow the project harness first, inspect existing similar code, implement the requested feature with minimal changes, update tests where needed, and prepare a PR summary.
```

## 7. Example bug prompt

```text
Use the bug-fixer workflow. Identify the root cause, make the smallest safe fix, add a regression test if practical, and explain the risk areas.
```

## 8. Important safety reminder

Caveman AI Skills is a universal guidance layer. It should never override your actual project harness.

Project-specific instructions always win.
