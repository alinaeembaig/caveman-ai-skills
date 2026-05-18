#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$(pwd)/.claude/skills"

mkdir -p "$TARGET_DIR"
cp -R "$ROOT_DIR/skills/"* "$TARGET_DIR/"

echo "Installed Caveman AI Skills into this project for Claude Code: $TARGET_DIR"
echo "Project-specific harness files remain the source of truth."
