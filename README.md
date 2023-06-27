# tmux-edgelord

Vim motion inspired bindings (alt + HJKL) to spatially navigate *all* panes, crossing session and window boundaries when edges are hit.

The four keybindings work similarly to typical select-pane bindings. When used at the edge of a window, however, they shift to a pane in an adjacent window (or session). This differs from typical select-pane bindings which would wrap around - shifting to an opposite pane in the same window.

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




