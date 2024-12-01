#!/bin/bash

PHONE_IP="192.168.1.101"

adb connect $PHONE_IP:$(nmap $PHONE_IP -p 30000-65535 | awk '/\/tcp.*open/ {print $1}' | cut -d/ -f1 | head -n 1);
sleep 2;
scrcpy -K --window-x 3840 --window-y 0 --window-height 1080 --window-width 469 -m1920 --max-fps=60 --select-tcpip;
