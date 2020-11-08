#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/WindowPosition.rasi"

# Options
top=" Top"
left=" Left"
bot=" Bottom"
right=" Right"

# Variable passed to rofi
Print="$top\n$left\n$bot\n$right"

Look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 0)"
case $Look in

$top) sed -i 's/TitleAt.*/TitleAtTop/g' ~/.fvwm/functions/window_decorrc	;;
$left) sed -i 's/TitleAt.*/TitleAtLeft/g' ~/.fvwm/functions/window_decorrc	;;
$bot) sed -i 's/TitleAt.*/TitleAtBottom/g' ~/.fvwm/functions/window_decorrc	;; 
$right) sed -i 's/TitleAt.*/TitleAtRight/g' ~/.fvwm/functions/window_decorrc	;;

esac