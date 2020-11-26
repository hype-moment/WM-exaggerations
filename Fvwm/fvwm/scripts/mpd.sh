#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/Mpd.rasi"
music=$(mpc current)

# Options
prev=""
play=""
pause=""
next=""
go=" Start"
stop=" Exit"

# Variable passed to rofi
Print="$go\n$prev\n$play\n$pause\n$next\n$stop"

Look="$(echo -e "$Print" | $rofi_theme -p "$music" -dmenu -selected-row 2)"
case $Look in

$go) mpd 	;;
$prev) mpc prev		;;
$play) mpc play		;;
$pause) mpc pause	;; 
$next) mpc next 	;;
$stop) pkill mpd 	;;

esac