#! /bin/bash

echo "=============================================="
echo "              Pi Coding Agent                 "
echo "=============================================="

if command -v pi &>/dev/null; then
    echo "Already Installed Pi Coding Agent!"
else
    echo "Pi Coding Agent is not installed. Install it first:"
    echo "npm install -g --ignore-scripts @earendil-works/pi-coding-agent"
fi

echo "Create Symbolic link for Pi settings"
mkdir -p ${HOME}/.pi/agent
ln -sf ${PWD}/pi/AGENTS.md ${HOME}/.pi/agent/AGENTS.md
