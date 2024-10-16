#!/bin/bash
WM=$XDG_SESSION_DESKTOP

jq -s '.[0] * .[1]' ~/.config/waybar/config.base.jsonc ~/.config/waybar/config.$WM.jsonc > ~/.config/waybar/config.jsonc
waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.$WM.css
