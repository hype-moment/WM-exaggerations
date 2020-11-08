#/bin/bash

Tint=$(cat .gtkrc-2.0 | grep gtk-theme-name | sed 's/.*="//g;s/"//g')

if [[ $Tint = Midnight ]]; then
	tint2 -c ~/.config/tint2/Dark.tint2rc &
elif [[ $Tint = Midday ]]; then
	tint2 -c ~/.config/tint2/Light.tint2rc &
fi