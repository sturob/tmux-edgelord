# tmux-edgelord

Move between panes, windows and sessions using the same four keys

Works like basic select-pane bindings except moving into a screen edge takes you to another window or session.

In the horizontal plane, moving left = previous window, and right = next window.

Vertically, moving up = previous session, and moving down next session. 

Imagine all your sessions stacked on top of each other and it makes more sense.

This is how moving panes works in Zellij.


## bindings

*These are uppercase.*

Alt+J  Upward pane, in the previous session if necessary. 
Alt+K  Downward pane, in the next session if necessary. 
Alt+H  Rightward pane, in the next window if necessary.
Alt+L  Leftward pane, in the previous window if necessary.

