#!/bin/bash
set -e

echo "Setting up pixi environment..."
pixi install

echo "Setting up uv environment..."
# Use pixi's python to create uv's venv
# The path to pixi's python is .pixi/envs/default/bin/python
PIXI_PYTHON=".pixi/envs/default/bin/python"

if [ ! -f "$PIXI_PYTHON" ]; then
    echo "Error: Pixi python not found at $PIXI_PYTHON. Did pixi install fail?"
    exit 1
fi

uv venv -p "$PIXI_PYTHON" --seed
source .venv/bin/activate

echo "Syncing python dependencies with uv..."
uv sync

echo "Setup complete! You can now use 'direnv allow' or source .envrc manually."
