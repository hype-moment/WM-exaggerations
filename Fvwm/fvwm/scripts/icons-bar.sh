#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/Window_Icons.rasi"

# Options
cir="Circles"
blo="Blocks"
w10="W10"
mac="MacOS"
wcircle="Simple"
class="Classic"

# Variable passed to rofi
Print="$cir\n$blo\n$w10\n$mac\n$wcircle\n$class"

Look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 0)"
case $Look in

$cir) sed -i 's/icons\/.*/icons\/circles/g' ~/.fvwm/config 	;;
$blo) sed -i 's/icons\/.*/icons\/blocks/g' ~/.fvwm/config 	;;
$w10) sed -i 's/icons\/.*/icons\/w10/g' ~/.fvwm/config 	;; 
$mac) sed -i 's/icons\/.*/icons\/macos/g' ~/.fvwm/config 	;;
$wcircle) sed -i 's/icons\/.*/icons\/wcircles/g' ~/.fvwm/config 	;;
$class) sed -i 's/icons\/.*/icons\/classic/g' ~/.fvwm/config 	;;
esac