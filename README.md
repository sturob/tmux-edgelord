# tmux-edgelord

Vim motion inspired bindings (alt + HJKL) to move spatially around *all* panes, crossing session and window boundaries.

The four keybindings work the same as typical select-pane bindings. Using them at the edge of a window, however, leads to a different window, and possibly a different session. Typical select-pane bindings would just wrap around to a pane on the opposite side of the same window.

## Edge behaviour

In the horizontal plane: 
 - leftward = previous window 
 - rightward = next window

Vertically:
- upward = previous session
- downward = next session

Imagine all your sessions stacked on top of each other and it makes more sense.


## Bindings

These are UPPERCASE.

	Alt+J  Upward pane, previous session if necessary 
	Alt+K  Downward pane, next session if necessary 
	Alt+H  Rightward pane, next window if necessary
	Alt+L  Leftward pane, previous window if necessary


## Installation

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'sturob/tmux-edgelord'

Hit `prefix + I` to fetch the plugin and source it. You should now be able to
use the plugin.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/sturob/tmux-edgelord ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/setup.tmux

Reload TMUX environment with: `$ tmux source-file ~/.tmux.conf`.
You should now be able to use the plugin.




