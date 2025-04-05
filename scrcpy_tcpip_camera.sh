#!/bin/bash

PHONE_IP="192.168.1.101"

# Check if the device is already connected
if adb devices | grep -q "$PHONE_IP"; then
    echo "Device already connected. Launching scrcpy..."
else
    # Find an open port and connect to the device
    echo "Connecting to device..."
    PORT=$(nmap $PHONE_IP -p 31000-65535 | awk '/\/tcp.*open/ {print $1}' | cut -d/ -f1 | head -n 1)
    adb connect $PHONE_IP:$PORT
    sleep 2
fi

# Execute scrcpy
scrcpy --video-source=camera --v4l2-sink=/dev/video2 --no-video-playback --camera-id=0 --camera-size=1920x1440 --camera-fps=60 --video-codec=h264 --no-audio
