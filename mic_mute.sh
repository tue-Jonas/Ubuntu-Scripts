#!/bin/bash

# Check current mute status
current_status=$(pactl get-source-mute @DEFAULT_SOURCE@)

if [[ $current_status == "Mute: yes" ]]; then
    # Unmute if currently muted
    pactl set-source-mute @DEFAULT_SOURCE@ 0
    echo "Microphone unmuted"
else
    # Mute if currently unmuted
    pactl set-source-mute @DEFAULT_SOURCE@ 1
    echo "Microphone muted"
fi

