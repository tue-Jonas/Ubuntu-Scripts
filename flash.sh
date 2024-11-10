#!/bin/bash

# Array of X positions for each monitor
positions=(0 1920 3840)

# Loop through each monitor position and open a white full-screen terminal
for pos in "${positions[@]}"; do
    gnome-terminal --window --geometry=0x1080+$pos+0 --title="flash" --full-screen -- bash -c \
    "echo -e '\033]11;#FFFFFF\007'; read"
done

