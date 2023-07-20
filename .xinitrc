#!/bin/sh

monlayout
xset s off -dpms
xwallpaper --maximize "$PAPE"

[ -f "$HOME/.Xresources" ] && xrdb -merge -I "$HOME/.Xresources"

programs="numlockx transmission-daemon redshift dwmblocks"
for program in $programs; do
    pidof -sx "$program" || "$program" &
done > /dev/null 2>&1

exec dwm
