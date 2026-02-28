#! /bin/bash

echo "=============================================="
echo "              Neovim                          "
echo "=============================================="

if command -v nvim &>/dev/null; then
    echo "Already Installed Neovim!"
else
    echo "Install Neovim..."
    brew install neovim
fi

echo "Create Symbolic links for Neovim config"
mkdir -p ${HOME}/.config/nvim
ln -sf ${PWD}/nvim/init.lua ${HOME}/.config/nvim/init.lua
ln -sf ${PWD}/nvim/lua ${HOME}/.config/nvim/lua
ln -sf ${PWD}/nvim/ideavimrc ${HOME}/.ideavimrc

echo "Neovim setup complete! Run 'nvim' to auto-install plugins via lazy.nvim."
