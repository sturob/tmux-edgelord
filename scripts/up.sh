#!/usr/bin/env bash

lines_from_top=$(tmux display-message -p -F "#{pane_top}")

if [ $lines_from_top -eq 0 ]; then
	tmux switch-client -p
else
	tmux select-pane -U
fi
