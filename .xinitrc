# General
numlockx &
redshift &
xrandr -s 1920x1080 &

# Torrents
transmission-daemon &

# Xresources
xrdb $HOME/.Xresources &

# Wallpaper
xwallpaper --maximize $PAPE

# Window manager
dwmblocks &
exec dwm
