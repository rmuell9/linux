#!/bin/bash

current=$(gsettings get org.gnome.desktop.interface gtk-theme)

if [[ $current == *"Adwaita-dark"* ]]; then
    # Switch to light
    notify-send "Switched to Light Theme"
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
    hyprctl hyprpaper wallpaper "eDP-1,/home/matthew/.config/backgrounds/abstract.jpg"
    hyprctl hyprpaper wallpaper "DP-2,/home/matthew/.config/backgrounds/abstract.jpg"
    # sed -i "s/^theme=.*/theme=rose-pine-moon/" "/home/matthew/.config/ghostty/config"
    sed -i "s/^    col.active_border = .*/    col.active_border = rgba(88ceebee)/" "/home/matthew/.config/hypr/settings/aesthetics.conf"
    sed -i "s/^border-color=.*/border-color=\\#88ceebee/" "/home/matthew/.config/mako/config"
    makoctl reload
    # pkill hyprsunset
fi
