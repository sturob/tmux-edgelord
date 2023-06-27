# tmux-edgelord

Vim inspired bindings (HJKL) to move spatially around all panes, crossing session and window boundaries.

The four keybindings work the same as typical select-pane bindings. Using them at the edge of a window, however, leads to a different window, and possibly a different session. Typical select-pane bindings would just wrap around to a pane on the opposite side of the same window.

## Edge movements

In the horizontal plane: 
 - leftward = previous window 
 - rightward = next window

Vertically:
- upward = previous session
- downward = next session

Imagine all your sessions stacked on top of each other and it makes more sense.


## bindings

These are UPPERCASE.

	Alt+J  Upward pane, in the previous session if necessary. 
	Alt+K  Downward pane, in the next session if necessary. 
	Alt+H  Rightward pane, in the next window if necessary.
	Alt+L  Leftward pane, in the previous window if necessary.


