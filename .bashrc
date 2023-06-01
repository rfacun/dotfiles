#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='[\u@\h \W]\$ '

# Aliases
alias ls='ls -lAhv --group-directories-first --color=auto'
alias grep='grep -i --color=auto'
alias mkdir='mkdir -p'
alias cp='cp -rv'

alias mpv="mpv --no-input-default-bindings"
alias img="sxiv -fabr"
alias scrot="scrot -q 100 -f '%Y%m%d_%H%M%S_scrot.png'"

# Dotfiles management
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Source scripts
source "$HOME/.scripts/fnd"

# Dircolors
test -r "$HOME/.dir_colors" && eval "$(dircolors "$HOME/.dir_colors")"
