# General
numlockx &
redshift &
xrandr -s 1920x1080 &
xset s off -dpms &

# Torrents
transmission-daemon &

# Xresources
xrdb $HOME/.Xresources &

# Wallpaper
xwallpaper --zoom $PAPE

# Window manager
dwmblocks &
exec dwm
