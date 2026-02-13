#!/usr/bin/env bash

# Make sure PATH is correct
export PATH="$HOME/.local/bin:$PATH"

# Apply monitor layout
autorandr --change

# Wait# Restore wallpaper AFTER monitors exist
nitrogen --restore

# Start compositor
picom &

# Start tiling helper
autotiling &

# Keyboard layout
setxkbmap -option 'grp:win_space_toggle' -layout us,cz -variant ,qwerty &

# Redshift
redshift-gtk -x &

# Polybar AFTER monitors exist
run_polybar &

# Move to workspace
i3-msg workspace "$ws1"
