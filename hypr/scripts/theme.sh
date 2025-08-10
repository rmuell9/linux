#!/bin/bash

# Check current theme
current=$(gsettings get org.gnome.desktop.interface gtk-theme)
echo "Current theme: $current"

if [[ $current == *"dark"* ]]; then
    # Switch to light
    notify-send "Switched to Light Theme"
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/abstract.jpg"
    pkill hyprsunset
else
    # Switch to dark
    notify-send "Switched to Dark Theme"
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/smoker.jpg"
    hyprsunset -t 4000
fi
