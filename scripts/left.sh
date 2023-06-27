#!/usr/bin/env bash

is_left=$(tmux display-message -p -F "#{pane_at_left}")

if [ $is_left -eq 1 ]; then
	tmux prev
else
	tmux select-pane -L
fi
