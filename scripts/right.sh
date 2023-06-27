#!/usr/bin/env bash

is_right=$(tmux display-message -p -F "#{pane_at_right}")

if [ $is_right -eq 1 ]; then
	tmux next
else
	tmux select-pane -R
fi
