#!/usr/bin/env bash

is_left=$(tmux display-message -p -F "#{pane_at_left}")

if [ $is_left -eq 1 ]; then
	tmux prev
	right_edge_pane=$(
 		tmux list-panes -F '#{pane_id} #{pane_at_right}' | awk "/ 1$/" | head -n 1 | awk '{print $1}'
 	)
	tmux select-pane -t $right_edge_pane
else
	tmux select-pane -L
fi
