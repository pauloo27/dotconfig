#!/bin/sh
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

hyprpaper &
dunst &
waybar &

dex -a -s .config/autostart/
wlsunset -T 5000 &

exit 0
