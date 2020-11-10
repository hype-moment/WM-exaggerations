#!/usr/bin/env bash

#rofi_theme="rofi -theme ~/.config/rofi/Power-Menus/Power2.rasi"
rofi_theme="rofi -theme ~/.fvwm/rofi/tools.rasi"

# Options
position=""
icons=""
shot=""
play=""
mode=""

# Variable passed to rofi
Print="$position\n$mode\n$icons\n$shot\n$play"

look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 0)"
case $look in
    $position)
        sh ~/.fvwm/scripts/Set_Window_Bar.sh
        ;;
    $icons)
        sh ~/.fvwm/scripts/icons-bar.sh
        ;;
    $shot)
        sh ~/.fvwm/scripts/print.sh
        ;;
    $play)
        sh ~/.fvwm/scripts/mpd.sh
        ;;
    $mode)
        sh ~/.fvwm/scripts/mode.sh
esac