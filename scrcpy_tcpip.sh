adb connect $PHONE_IP:$(nmap $PHONE_IP -p 37000-44000 | awk "/\/tcp/" | cut -d/ -f1);
scrcpy -K --window-x 3840 --window-y 0 --window-height 1080 --window-width 469 -m1920 --max-fps=60 --select-tcpip
