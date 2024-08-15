#!/bin/bash

# Check current mute status
current_status=$(pactl get-sink-mute @DEFAULT_SINK@)

if [[ $current_status == "Mute: yes" ]]; then
    # Unmute if currently muted
    pactl set-sink-mute @DEFAULT_SINK@ 0
    echo "Sound unmuted"
else
    # Mute if currently unmuted
    pactl set-sink-mute @DEFAULT_SINK@ 1
    echo "Sound muted"
fi

