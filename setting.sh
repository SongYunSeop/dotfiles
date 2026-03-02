#! /bin/bash

if [[ "$(uname -s)" != "Darwin" ]];
then
    echo "=============================================="
    echo "              You're not using OSX.             "
    echo "=============================================="
    exit
fi

# Backup existing dotfiles before overwriting
BACKUP_TARGETS=(~/.zshrc ~/.config/starship.toml ~/.config/nvim ~/.ideavimrc ~/.tmux.conf ~/.claude/settings.json)
NEEDS_BACKUP=false
for f in "${BACKUP_TARGETS[@]}"; do
    if [ -e "$f" ] && [ ! -L "$f" ]; then
        NEEDS_BACKUP=true
        break
    fi
done
if $NEEDS_BACKUP; then
    BACKUP_DIR="$HOME/.dotfiles-backup/$(date +%Y%m%d%H%M%S)"
    echo "=============================================="
    echo "  Backing up existing dotfiles to:"
    echo "  $BACKUP_DIR"
    echo "=============================================="
    mkdir -p "$BACKUP_DIR"
    for f in "${BACKUP_TARGETS[@]}"; do
        [ -e "$f" ] && [ ! -L "$f" ] && cp -rL "$f" "$BACKUP_DIR/"
    done
fi

# Homebrew
source ${PWD}/brew/setting.sh

# Font
brew install --cask font-hack-nerd-font

# zsh
source ${PWD}/zsh/setting.sh
ln -sf ${PWD}/zsh/zshrc ~/.zshrc
ln -sf ${PWD}/zsh/starship.toml ~/.config/starship.toml

# Python
source ${PWD}/python/setting.sh

# Neovim
source ${PWD}/nvim/setting.sh

# tmux.conf
source ${PWD}/tmux/setting.sh

# Claude Code
source ${PWD}/claude/setting.sh

# keyboard
source ${PWD}/keyboard/setting.sh

echo DONE🎉🎉🎉
