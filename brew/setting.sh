#! /bin/bash

if [[ "$(uname -s)" == "Darwin" ]];
then
    echo "=============================================="
    echo "              Homebrew                    "
    echo "=============================================="
    if [[ "$(which brew)" == "/opt/homebrew/bin/brew" ]];
    then
        echo "Already Installed Homebrew!"
    else
        echo "Install Homebrew[https://brew.sh/index_ko.html]..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
    echo "Installing packages from Brewfile..."
    brew bundle --file="${PWD}/brew/Brewfile"
else
    echo "=============================================="
    echo "              You're not OSX!                    "
    echo "=============================================="
fi

