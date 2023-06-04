#!/bin/sh

# Source .bashrc
[ -f "$XDG_CONFIG_HOME/bash/.bashrc" ] && . "$XDG_CONFIG_HOME/bash/.bashrc"

# $PATH
export PATH="$PATH:$HOME/.local/bin"

# XDG directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Screen locker
export XSECURELOCK_SAVER=saver_mpv
export XSECURELOCK_LIST_VIDEOS_COMMAND="find $XDG_CONFIG_HOME/xsecurelock/screensavers -type f"
export XSECURELOCK_IMAGE_DURATION_SECONDS=2
export XSECURELOCK_SHOW_KEYBOARD_LAYOUT=0      # Not implemented in 1.8.0

# Programs
export TERM="alacritty"
export EDITOR="nvim"
export BROWSER="firefox"

export STATUSBAR="$HOME/.local/bin/statusbar"

nb="#0a0e14" ; nf="#b3b1ad" ; sb="#c78c3f" ; sf="#0a0e14"
nhb="#0a0e14" ; nhf="#c78c3f" ; shb="#b37e38" ; shf="#0a0e14"
export DMENU_DEFAULT_OPTS="-i \
    -nb  $nb  -nf  $nf  -sb  $sb  -sf  $sf \
    -nhb $nhb -nhf $nhf -shb $shb -shf $shf"
export FZF_DEFAULT_OPTS="--no-scrollbar --no-border --layout=reverse --color=bg+:-1"
