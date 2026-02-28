#! /bin/bash

if [[ "$(uname -s)" != "Darwin" ]];
then
    echo "=============================================="
    echo "              You're not using OSX.             "
    echo "=============================================="
    exit
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
