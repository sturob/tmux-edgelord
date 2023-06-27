#!/usr/bin/env bash

is_bottom=$(tmux display-message -p -F "#{pane_at_bottom}")

if [ $is_bottom -eq 1 ]; then
	tmux switch-client -n
else
	tmux select-pane -D
fi
