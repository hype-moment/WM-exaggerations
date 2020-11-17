#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/mode.rasi"

# Options
light=""
dark=""

# Variable passed to rofi
Print="$light\n$dark"

Look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 2)"
case $Look in

$dark) sed -i 's/gtk-theme-name=.*/gtk-theme-name=Midnight/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/gtk-theme-name=.*/gtk-theme-name="Midnight"/g' ~/.gtkrc-2.0
pkill tint2
tint2 -c ~/.config/tint2/Dark.tint2rc
;;
$light) sed -i 's/gtk-theme-name=.*/gtk-theme-name=Midday/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/gtk-theme-name=.*/gtk-theme-name="Midday"/g' ~/.gtkrc-2.0
pkill tint2
tint2 -c ~/.config/tint2/Light.tint2rc 
esac