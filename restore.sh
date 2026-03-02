#!/bin/bash

BACKUP_BASE="$HOME/.dotfiles-backup"

if [ ! -d "$BACKUP_BASE" ]; then
    echo "No backup found at $BACKUP_BASE"
    exit 1
fi

# Find the most recent backup
LATEST=$(ls -1d "$BACKUP_BASE"/*/ 2>/dev/null | sort -r | head -1)

if [ -z "$LATEST" ]; then
    echo "No backup found in $BACKUP_BASE"
    exit 1
fi

echo "=============================================="
echo "  Restoring from: $LATEST"
echo "=============================================="

# Map backup filenames to their original paths
declare -A RESTORE_MAP=(
    [.zshrc]="$HOME/.zshrc"
    [starship.toml]="$HOME/.config/starship.toml"
    [nvim]="$HOME/.config/nvim"
    [.ideavimrc]="$HOME/.ideavimrc"
    [.tmux.conf]="$HOME/.tmux.conf"
    [settings.json]="$HOME/.claude/settings.json"
)

for file in "$LATEST"*; do
    name=$(basename "$file")
    dest="${RESTORE_MAP[$name]}"
    if [ -z "$dest" ]; then
        echo "Skip: $name (unknown target)"
        continue
    fi
    rm -rf "$dest"
    cp -rL "$file" "$dest"
    echo "Restored: $dest"
done

echo "Done! You may need to restart your shell."
