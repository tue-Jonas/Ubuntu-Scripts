#!/bin/bash

# Get the ID of the active window
ACTIVE_WIN_ID=$(xprop -root _NET_ACTIVE_WINDOW | awk '{print $5}')

# Check if the window is already sticky
if xprop -id $ACTIVE_WIN_ID | grep -q '_NET_WM_STATE_STICKY';
then
    # If it is sticky, remove sticky state
    wmctrl -r :ACTIVE: -b remove,sticky
else
    # If it is not sticky, add sticky state
    wmctrl -r :ACTIVE: -b add,sticky
fi

