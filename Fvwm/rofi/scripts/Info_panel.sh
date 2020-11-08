#!/usr/bin/env bash

rofi_theme="rofi -theme ~/.config/rofi/Utils/info.rasi"

# Options
#shutdown="襤"
#reboot="ﰇ"
#lock=""
#suspend="鈴"
#logout=""

# Variable passed to rofi
#options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

#chosen="$(echo -e "$options" | $rofi_theme -p " " -dmenu -selected-row 1)"

hr="━━━━━━━━━━━━━━━━"

Ups=$(checkupdates 2> /dev/null | wc -l)
Inst=$(pacman -Q | wc -l)
Cache=$(ls /var/cache/pacman/pkg | wc -l)
Ctemp=$(sensors | grep "Core 0" | awk '{print $1" "$2" "$3}')
Ctemp1=$(sensors | grep "Core 1" | awk '{print $1" "$2" "$3}')

Logo="Pacman $hr\n🔃 Atualizações ↳ $Ups\n📦 Instalados   ↳ $Inst\n♻️ Cache        ↳ $Cache\nSistema $hr\n❄️ Temp $Ctemp\n❄️ Temp $Ctemp1"


echo -e "$Logo" | $rofi_theme -p -dmenu -selected-row 1