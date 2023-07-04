#!/usr/bin/env bash

lines_from_top=$(tmux display-message -p -F "#{pane_top}")


if [ $lines_from_top -eq 0 ]; then
	tmux switch-client -p
	bottom_edge_pane=$(
		tmux list-panes -F '#{pane_id} #{pane_at_bottom}' | awk "/ 1$/" | head -n 1 | awk '{print $1}'
	)
	tmux select-pane -t $bottom_edge_pane
else
	tmux select-pane -U
fi
