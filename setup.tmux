#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux bind -n M-K run-shell -b "$CURRENT_DIR/scripts/up.sh"
tmux bind -n M-J run-shell -b "$CURRENT_DIR/scripts/down.sh"
tmux bind -n M-H run-shell -b "$CURRENT_DIR/scripts/left.sh"
tmux bind -n M-L run-shell -b "$CURRENT_DIR/scripts/right.sh"

