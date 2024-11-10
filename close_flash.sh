#!/bin/bash

# Find all gnome-terminal processes with the title "WhiteScreen"
pids=$(xdotool search --name "flash")

# Loop through each window ID and close the window
for pid in $pids; do
    xdotool windowclose "$pid"
done
