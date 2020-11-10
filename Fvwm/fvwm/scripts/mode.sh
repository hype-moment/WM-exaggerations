#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/mode.rasi"

# Options
light=""
dark=""

# Variable passed to rofi
Print="$light\n$dark"

Look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 2)"
case $Look in

$dark) sed -i 's/Tint #.*/Tint #121212 80/g' ~/.fvwm/functions/window_decorrc
sed -i 's/gtk-theme-name=.*/gtk-theme-name=Midnight/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/gtk-theme-name=.*/gtk-theme-name="Midnight"/g' ~/.gtkrc-2.0
pkill tint2
tint2 -c ~/.fvwm/tint2/Dark.tint2rc
;;
$light) sed -i 's/Tint #.*/Tint #F5F5F5 80/g' ~/.fvwm/functions/window_decorrc
sed -i 's/gtk-theme-name=.*/gtk-theme-name=Midday/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/gtk-theme-name=.*/gtk-theme-name="Midday"/g' ~/.gtkrc-2.0
pkill tint2
tint2 -c ~/.fvwm/tint2/Light.tint2rc 
esac