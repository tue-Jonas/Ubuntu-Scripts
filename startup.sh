#!/bin/bash

# Start Discord
discord &
# Wait for the window to open
sleep 3
# Move the window to the left screen (assuming it is screen 2) and maximize it
wmctrl -r "Discord" -e 0,0,0,0,0
wmctrl -r "Discord" -b add,maximized_vert,maximized_horz

# Start Google Chrome
google-chrome web.whatsapp.com calendar.google.com tasksboard.com &
# Wait for the window to open
sleep 1
# Move the window to the middle screen (assuming it is screen 1) and maximize it
wmctrl -r "Google Chrome" -e 0,1920,0,0,0
wmctrl -r "Google Chrome" -b add,maximized_vert,maximized_horz

# Start Spotify
spotify &
# Wait for the window to open
sleep 1
# Move the window to the right screen (assuming it is screen 3) and maximize it
wmctrl -r "Spotify" -e 0,3840,0,0,0
wmctrl -r "Spotify" -b add,maximized_vert,maximized_horz

