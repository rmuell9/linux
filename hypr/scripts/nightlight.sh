#!/bin/bash

# Check if hyprsunset is running
if pgrep -x "hyprsunset" > /dev/null; then
    # If running, kill it
    notify-send "Nightlight off"
    pkill hyprsunset
else
    # If not running, start it with temperature 4000
    notify-send "Nightlight On"
    hyprsunset -t 4000 &
fi
