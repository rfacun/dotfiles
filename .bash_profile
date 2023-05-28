#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# $PATH directories
export PATH="$HOME/.local/bin:$PATH"

# Desktop
export STATUSBAR="$HOME/.local/bin/statusbar"
export PAPE="$HOME/media/papes/space/deepfield.jpg"

# Lock
export XSECURELOCK_SAVER=saver_mpv
export XSECURELOCK_LIST_VIDEOS_COMMAND="find $HOME/media/xsecurelock -type f"
export XSECURELOCK_IMAGE_DURATION_SECONDS=2
export XSECURELOCK_SHOW_KEYBOARD_LAYOUT=0      # Not implemented in 1.8.0
