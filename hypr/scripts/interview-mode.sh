#!/bin/bash

if pgrep -x "waybar" > /dev/null
then
    notify-send "Interview Mode Enabled"
    pkill waybar
    pkill hyprsunset
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/windows.jpg"
else
    notify-send "Interview Mode Disabled"
    nohup waybar &
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/ren.jpg"
fi
