#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/Icons_Bar.rasi"

# Options
cir="Circles"
blo="Blocks"
w10="W10"
mac="MacOS"

# Variable passed to rofi
Print="$cir\n$blo\n$w10\n$mac"

Look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 0)"
case $Look in

$cir) sed -i 's/icons\/.*/icons\/circles/g' ~/.fvwm/config 	;;
$blo) sed -i 's/icons\/.*/icons\/blocks/g' ~/.fvwm/config 	;;
$w10) sed -i 's/icons\/.*/icons\/w10/g' ~/.fvwm/config 	;; 
$mac) sed -i 's/icons\/.*/icons\/mac/g' ~/.fvwm/config 	;;

esac