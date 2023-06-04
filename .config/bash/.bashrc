#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='[\u@\h \W]\$ '

# Sources
[ -f "$XDG_CONFIG_HOME/shell/.aliasrc" ] && . "$XDG_CONFIG_HOME/shell/.aliasrc"
[ -f "$HOME/.local/bin/fnd" ] && . "$HOME/.local/bin/fnd"

# dircolors
test -r "$HOME/.config/shell/.dir_colors" && eval "$(dircolors "$HOME/.config/shell/.dir_colors")"
