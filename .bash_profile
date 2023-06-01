# ~/.bash_profile

[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

# Scripts
export PATH="$PATH:$HOME/.scripts/"

# Main folders
export XDG_CONFIG_HOME="$HOME/.config/"
export DOCS="$HOME/documents/"
export DOWNLOADS="$HOME/downloads/"
export MEDIA="$HOME/media/"
export PROGRAMMING="$HOME/programming/"

# Programs
export EDITOR="nvim"
export TERM="alacritty"
export BROWSER="firefox"

export FZF_DEFAULT_OPTS="--height 30% --no-scrollbar --layout=reverse --border=sharp --color=bg+:-1"
export DMENU_DEFAULT_OPTS="-i \
    -nb "#0a0e14" -nf "#b3b1ad" -sb "#c78c3f" -sf "#0a0e14"\
    -nhb "#0a0e14" -nhf "#c78c3f" -shb "#b37e38" -shf "#0a0e14""

# Desktop
export STATUSBAR="$HOME/.scripts/statusbar/"
export PAPE="/home/rfacun/media/papes/nature/Cloudy Yosemite.jpg"

# Lock
export XSECURELOCK_SAVER=saver_mpv
export XSECURELOCK_LIST_VIDEOS_COMMAND="find $MEDIA/xsecurelock -type f"
export XSECURELOCK_IMAGE_DURATION_SECONDS=2
export XSECURELOCK_SHOW_KEYBOARD_LAYOUT=0      # Not implemented in 1.8.0
