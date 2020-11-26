#!/usr/bin/env bash

rofi_theme="rofi -theme ~/.fvwm/rofi/Tools.rasi"

# Options
position=""
icons=""
shot=""
play=""
mode=""
colors=""

# Variable passed to rofi
Print="$position\n$mode\n$icons\n$shot\n$play\n$colors"

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
        ;;
    $colors) 
        sh ~/.fvwm/scripts/colors.sh
esac