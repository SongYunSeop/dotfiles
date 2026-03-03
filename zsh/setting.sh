#! /bin/bash

echo "=============================================="
echo "              Zsh (Starship + zinit + fnm)     "
echo "=============================================="

# Starship prompt
if command -v starship &>/dev/null; then
    echo "Already Installed Starship!"
else
    echo "Install Starship..."
    brew install starship
fi

# zinit plugin manager
ZINIT_HOME="${HOME}/.local/share/zinit/zinit.git"
if [ -d "$ZINIT_HOME" ]; then
    echo "Already Installed zinit!"
else
    echo "Install zinit..."
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# eza (modern ls replacement)
if command -v eza &>/dev/null; then
    echo "Already Installed eza!"
else
    echo "Install eza..."
    brew install eza
fi

# fnm (Fast Node Manager)
if command -v fnm &>/dev/null; then
    echo "Already Installed fnm!"
else
    echo "Install fnm..."
    brew install fnm
fi
