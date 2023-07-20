#!/usr/bin/env bash

# Bash config
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

# $PATH directories
export PATH="$PATH:$HOME/.local/bin"

# Directories
export DOCS_DIR="$HOME/documents"
export DLS_DIR="$HOME/downloads"
export MUSIC_DIR="$HOME/media/music"
export NOTES_DIR="$HOME/documents/notes"
export PICS_DIR="$HOME/media/pictures"
export VIDEOS_DIR="$HOME/media/videos"
export SCREENSAVERS="$HOME/media/screensavers"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Screen locker
export XSECURELOCK_AUTH_TIMEOUT=5
export XSECURELOCK_IMAGE_DURATION_SECONDS=3
export XSECURELOCK_LIST_VIDEOS_COMMAND="fd . $SCREENSAVERS --type f"
export XSECURELOCK_SAVER="saver_mpv"
export XSECURELOCK_SHOW_KEYBOARD_LAYOUT=0 # Not implemented in 1.8.0

# Programs
export BROWSER="firefox"
export EDITOR="nvim"
export TERM="alacritty"
export PAPE="$PICS_DIR/mars-2.jpg"

# Settings
export FZF_DEFAULT_COMMAND="fd --hidden --no-ignore . $HOME"
export FZF_DEFAULT_OPTS="--no-scrollbar --no-border --layout=reverse --color=bg+:-1"
#export GIT_PS1_SHOWDIRTYSTATE=1
#export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
#export GIT_PS1_SHOWUPSTREAM="auto verbose name git"
#export GIT_PS1_SHOWCONFLICTSTATE="yes"
#export GIT_PS1_DESCRIBE_STYLE="branch"
export GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_DIRTRIM=1
export PROMPT_COMMAND="build_prompt"
