#! /bin/bash

echo "=============================================="
echo "              Tmux                    "
echo "=============================================="
brew install tmux
ln -sf ${PWD}/tmux/tmux.conf ~/.tmux.conf
ln -sf ${PWD}/bin/tat ~/.local/bin/tat
