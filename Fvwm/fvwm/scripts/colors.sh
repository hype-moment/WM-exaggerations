#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/Color_Mode.rasi"

# Options
dark="Dark"
white="Light"
red="Red"
blue="Blue"
dblue="Dark Blue"
aqua="Aqua"
green="Green"
purple="Purple"
salmon="Salmon"
coral="Coral"
orange="Orange"
yellow="Yellow"
crimson="Crimson"
gray="Gray"
pink="Pink"

# Variable passed to rofi
Print="$dark\n$white\n$red\n$blue\n$dblue\n$aqua\n$green\n$purple\n$orange\n$yellow\n$salmon\n$coral\n$crimson\n$gray\n$pink"

Look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 0)"
case $Look in

$dark) sed -i 's/Tint #.*/Tint #121212 50/g' ~/.fvwm/functions/window_decorrc
;;
$white) sed -i 's/Tint #.*/Tint #F5F5F5 50/g' ~/.fvwm/functions/window_decorrc
;;
$red) sed -i 's/Tint #.*/Tint #F12345 50/g' ~/.fvwm/functions/window_decorrc
;;
$crimson) sed -i 's/Tint #.*/Tint #DC143C 50/g' ~/.fvwm/functions/window_decorrc
;;
$blue) sed -i 's/Tint #.*/Tint #1E90FF 50/g' ~/.fvwm/functions/window_decorrc
;;
$dblue) sed -i 's/Tint #.*/Tint #00008B 50/g' ~/.fvwm/functions/window_decorrc
;;
$aqua) sed -i 's/Tint #.*/Tint #00FFFF 50/g' ~/.fvwm/functions/window_decorrc
;;
$green) sed -i 's/Tint #.*/Tint #00FF7F 50/g' ~/.fvwm/functions/window_decorrc
;;
$purple) sed -i 's/Tint #.*/Tint #4B0082 50/g' ~/.fvwm/functions/window_decorrc
;;
$orange) sed -i 's/Tint #.*/Tint #FF8C00 50/g' ~/.fvwm/functions/window_decorrc
;;
$yellow) sed -i 's/Tint #.*/Tint #FFFF00 50/g' ~/.fvwm/functions/window_decorrc
;;
$salmon) sed -i 's/Tint #.*/Tint #FA8072 50/g' ~/.fvwm/functions/window_decorrc
;;
$coral) sed -i 's/Tint #.*/Tint #FF7F50 50/g' ~/.fvwm/functions/window_decorrc
;;
$gray) sed -i 's/Tint #.*/Tint #808080 50/g' ~/.fvwm/functions/window_decorrc
;;
$pink) sed -i 's/Tint #.*/Tint #FF1493 50/g' ~/.fvwm/functions/window_decorrc
esac