# Don't name windows automatically
set-option -g allow-rename off
set -g default-terminal "screen-256color"

# Just because arrays start at 0 doesn't mean my windows need to 
set -g base-index 1

# vim like keybinds for tmux
bind -r h select-pane -L
bind -r j select-pane -D
bind -r k select-pane -U
bind -r l select-pane -R
