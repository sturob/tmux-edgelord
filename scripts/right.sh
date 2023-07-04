#!/usr/bin/env bash

is_right=$(tmux display-message -p -F "#{pane_at_right}")

if [ $is_right -eq 1 ]; then
	tmux next
	left_pane=$(
 		tmux list-panes -F '#{pane_id} #{pane_at_left}' | awk "/ 1$/" | head -n 1 | awk '{print $1}'
 	)
	tmux select-pane -t $left_pane
else
	tmux select-pane -R
fi
