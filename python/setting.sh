#! /bin/bash

echo "=============================================="
echo "              Python (uv)                     "
echo "=============================================="

if command -v uv &>/dev/null; then
    echo "Already Installed uv!"
else
    echo "Install uv..."
    brew install uv
fi

uv python install 3.13
echo "Python 3.13 installed via uv!"
