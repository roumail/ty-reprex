#!/usr/bin/env bash

# ------------------------------------------------------------
# Usage check
# ------------------------------------------------------------
if [ $# -lt 2 ]; then
    echo "Usage: $0 <root-dir> <variant-number: 1|2>"
    exit 1
fi

ROOT="$1"
VARIANT="$2"

if [ "$VARIANT" != "1" ] && [ "$VARIANT" != "2" ]; then
    echo "Error: variant must be 1 or 2"
    exit 1
fi

echo "Using ROOT: $ROOT"
echo "Using variant: $VARIANT"

# -----------------------------------
# Create Python environment
# -----------------------------------

uv venv --python 3.14 .venv
uv sync


mkdir -p "$ROOT"

# ------------------------------------------------------------
# Determine which vimrc to use
# ------------------------------------------------------------
VIMRC="$ROOT/.vimrc.variant$VARIANT"
if [ ! -f "$VIMRC" ]; then
    echo "Error: vimrc not found: $VIMRC"
    exit 1
fi
 
# ------------------------------------------------------------
# Launch Vim on example.py
# ------------------------------------------------------------
HOME="$ROOT" \
vim -u "$VIMRC" -N -i NONE src/example.py

