#!/bin/bash

PHONE_IP="192.168.1.101"

# Check if the device is already connected
if adb devices | grep -q "$PHONE_IP"; then
    echo "Device already connected. Launching scrcpy..."
else
    # Find an open port and connect to the device
    echo "Connecting to device..."
    PORT=$(nmap $PHONE_IP -p 30000-65535 | awk '/\/tcp.*open/ {print $1}' | cut -d/ -f1 | head -n 1)
    adb connect $PHONE_IP:$PORT
    sleep 2
fi

# Execute scrcpy
scrcpy -K --window-x 3840 --window-y 0 --window-height 1080 --window-width 469 -m1920 --max-fps=60 --select-tcpip

