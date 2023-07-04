#!/usr/bin/env bash

is_bottom=$(tmux display-message -p -F "#{pane_at_bottom}")

if [ $is_bottom -eq 1 ]; then
	tmux switch-client -n
	
	top_edge_pane=$(
		tmux list-panes -F '#{pane_id} #{pane_at_top}' | awk "/ 1$/" | head -n 1 | awk '{print $1}'
	)
	tmux select-pane -t $top_edge_pane
else
	tmux select-pane -D
fi
