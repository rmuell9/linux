#!/bin/bash

# Check current theme
current=$(gsettings get org.gnome.desktop.interface gtk-theme)

if [[ $current == "'Adwaita'" ]]; then
    # Switch to dark
    notify-send "Switched to Dark Theme"
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/weeknd.png"
    hyprctl hyprpaper wallpaper "DP-2,/home/matthew/.config/backgrounds/weeknd.png"
    # sed -i "s/^theme=.*/theme=ayu/" "/home/matthew/.config/ghostty/config"
    sed -i "s/^    col.active_border = .*/    col.active_border = rgba(00d9ffee)/" "/home/matthew/.config/hypr/settings/aesthetics.conf"
    sed -i "s/^border-color=.*/border-color=\\#00d9ffee/" "/home/matthew/.config/mako/config"
    makoctl reload
    # hyprsunset -t 4000
fi
