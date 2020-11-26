#/bin/bash

rofi_theme="rofi -theme ~/.fvwm/rofi/Mode.rasi"

# Options
light=""
dark=""

# Variable passed to rofi
Print="$light\n$dark"

Look="$(echo -e "$Print" | $rofi_theme -p " " -dmenu -selected-row 2)"
case $Look in

$dark) sed -i 's/gtk-theme-name=.*/gtk-theme-name=Midnight/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/gtk-theme-name=.*/gtk-theme-name="Midnight"/g' ~/.gtkrc-2.0
sed -i 's/background_color = .*/background_color = #121212 50/g' ~/.config/tint2/tint2rc
pkill tint2
tint2
;;
$light) sed -i 's/gtk-theme-name=.*/gtk-theme-name=Midday/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/gtk-theme-name=.*/gtk-theme-name="Midday"/g' ~/.gtkrc-2.0
sed -i 's/background_color = .*/background_color = #F5F5F5 50/g' ~/.config/tint2/tint2rc
pkill tint2
tint2 
esac