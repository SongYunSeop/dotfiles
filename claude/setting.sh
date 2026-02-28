#! /bin/bash

echo "=============================================="
echo "              Claude Code                     "
echo "=============================================="

if command -v claude &>/dev/null; then
    echo "Already Installed Claude Code!"
else
    echo "Install Claude Code..."
    brew install claude-code
fi

echo "Create Symbolic link for Claude Code settings"
mkdir -p ${HOME}/.claude
ln -sf ${PWD}/claude/settings.json ${HOME}/.claude/settings.json
