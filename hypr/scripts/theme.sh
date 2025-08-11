#!/bin/bash

# Check current theme
current=$(gsettings get org.gnome.desktop.interface gtk-theme)

if [[ $current == *"dark"* ]]; then
    # Switch to light
    notify-send "Switched to Light Theme"
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/abstract.jpg"
    sed -i "s/^theme=.*/theme=rose-pine-moon/" "/home/matthew/.config/ghostty/config"
    # pkill hyprsunset
else
    # Switch to dark
    notify-send "Switched to Dark Theme"
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/smoker.jpg"
    sed -i "s/^theme=.*/theme=ayu/" "/home/matthew/.config/ghostty/config"
    # hyprsunset -t 4000
fi
