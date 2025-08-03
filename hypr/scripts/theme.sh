#!/bin/bash

# Check current theme
current=$(gsettings get org.gnome.desktop.interface gtk-theme)
echo "Current theme: $current"

if [[ $current == *"dark"* ]]; then
    # Switch to light
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/day.jpg"
else
    # Switch to dark
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/moonguy.jpg"
fi
