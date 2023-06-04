#!/bin/sh

xrandr -s 1920x1080 &
xset s off -dpms
pape &

[ -f "$XDG_CONFIG_HOME/x11/.Xresources" ] &&
    xrdb -merge -I "$XDG_CONFIG_HOME/x11/.Xresources"

programs="numlockx redshift dwmblocks"
for program in $programs; do
    pidof -sx "$program" || "$program" &
done > /dev/null 2>&1

exec dwm
