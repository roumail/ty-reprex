#!/usr/bin/env bash

# ------------------------------------------------------------
# Usage check
# ------------------------------------------------------------
ROOT_DIR="${1:-$PWD}"

echo "Using ROOT: $ROOT"
# echo "Using variant: $VARIANT"

# -----------------------------------
# Create Python environment
# -----------------------------------

uv venv --python 3.14 .venv
uv sync


mkdir -p "$ROOT"

# ------------------------------------------------------------
# Determine which vimrc to use
# ------------------------------------------------------------
VIMRC="$ROOT/.vimrc"
if [ ! -f "$VIMRC" ]; then
    echo "Error: vimrc not found: $VIMRC"
    exit 1
fi
 
# ------------------------------------------------------------
# Launch Vim on example.py
# ------------------------------------------------------------
HOME="$ROOT" \
vim -u "$VIMRC" -N -i NONE src/example.py

