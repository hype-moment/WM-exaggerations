#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/print.rasi"

# Options
Shot=""
Time=""
Sel=""

# Variable passed to rofi
Print="$Shot\n$Time\n$Sel"

Look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 0)"
case $Look in

*$Shot*) scrot -d 1 'My_FVWM_%a-%d%b%y_%H.%M.png' -e 'viewnior ~/$f' 	;;

*$Time*) notify-send ScreenShot "8 seconds" && scrot -d 8 'My_FVWM_%a-%d%b%y_%H.%M.png' -e 'viewnior ~/$f'	;;

*$Sel*) scrot 'My_FVWM_%a-%d%b%y_%H.%M.png' --line style=dash,width=3,color="red" --select -e 'viewnior ~/$f'	;; 

esac