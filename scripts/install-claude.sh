#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$HOME/.claude/skills"

mkdir -p "$TARGET_DIR"
cp -R "$ROOT_DIR/skills/"* "$TARGET_DIR/"

echo "Installed Caveman AI Skills for Claude Code: $TARGET_DIR"
