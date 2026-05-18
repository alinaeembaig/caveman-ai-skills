#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$(pwd)/.agents/skills"

mkdir -p "$TARGET_DIR"
cp -R "$ROOT_DIR/skills/"* "$TARGET_DIR/"

echo "Installed Caveman AI Skills into this project for Codex-style agents: $TARGET_DIR"
echo "Project-specific harness files remain the source of truth."
