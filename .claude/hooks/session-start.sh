#!/bin/bash
set -euo pipefail
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then exit 0; fi
echo "Installing Superpowers skills..."
git clone --depth=1 https://github.com/nicolasaudran/claude-dotfiles.git /tmp/cdotfiles 2>/dev/null
mkdir -p ~/.claude/skills
cp -r /tmp/cdotfiles/skills/* ~/.claude/skills/
rm -rf /tmp/cdotfiles
echo "Done."
