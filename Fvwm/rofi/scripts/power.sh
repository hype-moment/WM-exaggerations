#!/usr/bin/env bash

rofi_theme="rofi -theme ~/.config/rofi/Power-Menus/Power2.rasi"

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_theme -p " " -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lockmore --blur 5 --image-fill Imagens/Pink-Girl.png
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $logout)
        openbox --exit
        pkill -u -9 $USER
        ;;
esac