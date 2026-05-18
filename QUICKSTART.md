# Quickstart

This guide helps you start using Caveman AI Skills with Codex-style agents, Claude Code, or project-level AI harnessing.

## 1. Clone the repository

### macOS / Linux / Git Bash

```bash
git clone https://github.com/alinaeembaig/caveman-ai-skills.git
cd caveman-ai-skills
```

### Windows PowerShell

```powershell
git clone https://github.com/alinaeembaig/caveman-ai-skills.git
cd caveman-ai-skills
```

## 2. Install globally for Codex-style agents

Use this if you want Caveman AI Skills available in all Codex-style projects.

### macOS / Linux / Git Bash

```bash
bash scripts/install-codex.sh
```

Skills will be copied to:

```text
~/.agents/skills/
```

### Windows PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex.ps1
```

Skills will be copied to:

```text
C:\Users\<your-user>\.agents\skills
```

Verify installation:

```powershell
dir $HOME\.agents\skills
```

## 3. Install globally for Claude Code

Use this if you want Caveman AI Skills available globally in Claude Code.

### macOS / Linux / Git Bash

```bash
bash scripts/install-claude.sh
```

Skills will be copied to:

```text
~/.claude/skills/
```

### Windows PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install-claude.ps1
```

Skills will be copied to:

```text
C:\Users\<your-user>\.claude\skills
```

Verify installation:

```powershell
dir $HOME\.claude\skills
```

## 4. Install inside a specific project

Use project-level installation if you want the skills available only inside one repository.

Project-specific harness files remain the source of truth.

### Codex-style project skills — macOS / Linux / Git Bash

```bash
cd /path/to/your-project
bash /path/to/caveman-ai-skills/scripts/install-project-codex.sh
```

This copies skills into:

```text
project/.agents/skills/
```

### Codex-style project skills — Windows PowerShell

From inside your project folder:

```powershell
cd C:\path\to\your-project
powershell -ExecutionPolicy Bypass -File D:\caveman-ai-skills\scripts\install-project-codex.ps1
```

This copies skills into:

```text
project\.agents\skills
```

### Claude Code project skills — macOS / Linux / Git Bash

```bash
cd /path/to/your-project
bash /path/to/caveman-ai-skills/scripts/install-project-claude.sh
```

This copies skills into:

```text
project/.claude/skills/
```

### Claude Code project skills — Windows PowerShell

From inside your project folder:

```powershell
cd C:\path\to\your-project
powershell -ExecutionPolicy Bypass -File D:\caveman-ai-skills\scripts\install-project-claude.ps1
```

This copies skills into:

```text
project\.claude\skills
```

## 5. Restart your AI coding tool

After installing skills, restart Codex, Claude Code, or your AI coding tool so it can detect the newly installed skill folders.

## 6. Recommended first prompt

After installing, open your project in your AI coding tool and ask:

```text
Use the project-discovery workflow. Read the project harness first, detect the stack, map the architecture, find build/test commands, and summarize the safest workflow for this repository. Do not modify existing harness files.
```

## 7. Example feature prompt

```text
Use the feature-implementation workflow. Follow the project harness first, inspect existing similar code, implement the requested feature with minimal changes, update tests where needed, and prepare a PR summary.
```

## 8. Example bug prompt

```text
Use the bug-fixer workflow. Identify the root cause, make the smallest safe fix, add a regression test if practical, and explain the risk areas.
```

## 9. Troubleshooting

### Windows: `set: pipefail` error

If you run this command in Windows PowerShell:

```powershell
bash scripts/install-codex.sh
```

or:

```powershell
bash scripts/install-claude.sh
```

and see an error like:

```text
invalid option name.sh: line 2: set: pipefail
```

use the PowerShell installers instead:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install-codex.ps1
powershell -ExecutionPolicy Bypass -File .\scripts\install-claude.ps1
```

### Confirm installed skills

Codex-style global install:

```powershell
dir $HOME\.agents\skills
```

Claude Code global install:

```powershell
dir $HOME\.claude\skills
```

Expected folders include:

```text
project-discovery
architecture-analyzer
feature-implementation
bug-fixer
database-engineer
api-engineer
frontend-engineer
testing-engineer
security-reviewer
performance-reviewer
devops-deployment
git-pr-workflow
documentation-writer
code-reviewer
```

## 10. Important safety reminder

Caveman AI Skills is a universal guidance layer. It should never override your actual project harness.

Project-specific instructions always win.
