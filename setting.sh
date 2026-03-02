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

SERVICES=(brew zsh python nvim tmux claude keyboard)

setup_brew()     { source ${PWD}/brew/setting.sh; brew install --cask font-hack-nerd-font; }
setup_zsh()      { source ${PWD}/zsh/setting.sh; ln -sf ${PWD}/zsh/zshrc ~/.zshrc; ln -sf ${PWD}/zsh/starship.toml ~/.config/starship.toml; }
setup_python()   { source ${PWD}/python/setting.sh; }
setup_nvim()     { source ${PWD}/nvim/setting.sh; }
setup_tmux()     { source ${PWD}/tmux/setting.sh; }
setup_claude()   { source ${PWD}/claude/setting.sh; }
setup_keyboard() { source ${PWD}/keyboard/setting.sh; }

if [ $# -eq 0 ]; then
    for service in "${SERVICES[@]}"; do
        "setup_${service}"
    done
else
    for arg in "$@"; do
        valid=false
        for service in "${SERVICES[@]}"; do
            if [ "$arg" = "$service" ]; then
                valid=true
                break
            fi
        done
        if ! $valid; then
            echo "Unknown service: $arg"
            echo "Available services: ${SERVICES[*]}"
            exit 1
        fi
        "setup_${arg}"
    done
fi

echo DONE🎉🎉🎉
