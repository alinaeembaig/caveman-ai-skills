# Caveman AI Skills

**Universal AI engineering skills for Codex, Claude Code, and project-safe agentic development.**

Caveman AI Skills is a stack-agnostic engineering skill kit for AI coding agents. It helps tools like Codex and Claude Code analyze projects, understand existing architecture, implement changes safely, review code, work with databases, prepare pull requests, and document decisions without overriding the rules of the actual project.

> **Universal skills are guidance, not project law. The actual project harness always wins.**

---

## Quick links

- [Quickstart](QUICKSTART.md) — full installation guide for macOS, Linux, Git Bash, and Windows PowerShell
- [Core Rules](CORE_RULES.md) — project-safe priority rules
- [Skills Index](SKILLS.md) — included skills and usage details
- [Marketing Kit](MARKETING_KIT.md) — launch posts and sharing content
- [Recommended Topics](TOPICS.md) — GitHub topics and repository description
- [Contributing](CONTRIBUTING.md) — contribution guide
- [Security Policy](SECURITY.md) — security expectations
- [License](LICENSE) — MIT license

Project templates:

- [AGENTS.template.md](AGENTS.template.md)
- [CLAUDE.template.md](CLAUDE.template.md)
- [CODEX.template.md](CODEX.template.md)

---

## Quick installation

Clone the repository:

```bash
git clone https://github.com/alinaeembaig/caveman-ai-skills.git
cd caveman-ai-skills
```

### Install globally for Codex-style agents

macOS / Linux / Git Bash:

```bash
bash scripts/install-codex.sh
```

Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex.ps1
```

Skills are copied to:

```text
macOS/Linux: ~/.agents/skills/
Windows:     C:\Users\<your-user>\.agents\skills
```

### Install globally for Claude Code

macOS / Linux / Git Bash:

```bash
bash scripts/install-claude.sh
```

Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install-claude.ps1
```

Skills are copied to:

```text
macOS/Linux: ~/.claude/skills/
Windows:     C:\Users\<your-user>\.claude\skills
```

### Install inside one project for Codex-style agents

macOS / Linux / Git Bash:

```bash
cd /path/to/your-project
bash /path/to/caveman-ai-skills/scripts/install-project-codex.sh
```

Windows PowerShell:

```powershell
cd C:\path\to\your-project
powershell -ExecutionPolicy Bypass -File D:\caveman-ai-skills\scripts\install-project-codex.ps1
```

Skills are copied to:

```text
project/.agents/skills/
```

### Install inside one project for Claude Code

macOS / Linux / Git Bash:

```bash
cd /path/to/your-project
bash /path/to/caveman-ai-skills/scripts/install-project-claude.sh
```

Windows PowerShell:

```powershell
cd C:\path\to\your-project
powershell -ExecutionPolicy Bypass -File D:\caveman-ai-skills\scripts\install-project-claude.ps1
```

Skills are copied to:

```text
project/.claude/skills/
```

After installing, restart Codex, Claude Code, or your AI coding tool so it can detect the skills.

For full details and troubleshooting, see [QUICKSTART.md](QUICKSTART.md).

---

## Recommended first prompt

```text
Use the project-discovery workflow. Read the project harness first, detect the stack, map the architecture, find build/test commands, and summarize the safest workflow for this repository. Do not modify existing harness files.
```

---

## Included skills

- `project-discovery`
- `architecture-analyzer`
- `feature-implementation`
- `bug-fixer`
- `database-engineer`
- `api-engineer`
- `frontend-engineer`
- `testing-engineer`
- `security-reviewer`
- `performance-reviewer`
- `devops-deployment`
- `git-pr-workflow`
- `documentation-writer`
- `code-reviewer`

See [SKILLS.md](SKILLS.md) for details.

---

## What you achieve

- Better project discovery before edits
- Stack-agnostic engineering workflows
- Safer feature implementation
- More consistent debugging
- Better database, API, frontend, testing, security, performance, DevOps, Git, documentation, and code-review workflows
- Reduced repeated prompting across projects
- Compatibility with Codex-style and Claude Code-style skill folders

---

## Core rule

When working inside a project, AI agents should follow this priority order:

1. Current user instruction
2. Project-specific `AGENTS.md`, `CLAUDE.md`, `CODEX.md`, or similar files
3. Project-specific `.harness/`, `.agents/`, `.claude/`, `docs/`, `README.md`, and workflow files
4. Existing code patterns and tests
5. Caveman AI Skills universal guidance

If there is any conflict, the project-specific harness wins.

---

## License

This project is released under the [MIT License](LICENSE).
