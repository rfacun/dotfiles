#!/usr/bin/env bash
# shellcheck disable=SC1090,SC2164

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

sources=(
    "/usr/share/git/completion/git-completion.bash"
    "/usr/share/git/completion/git-prompt.sh"
    "$HOME/.local/bin/goto"
)

for i in "${sources[@]}"; do [ -f "$i" ] && . "$i"; done

# Prompt
build_prompt() {
    PS1="\[\033[33m\]\W\[\033[m\]$(__git_ps1 " (%s)") \[\033[1m\]\\$\[\033[m\] "
}

# Aliases
alias \
	mv="mv -iv" \
	cp="cp -rv" \
	rm="rm -Iv" \
	bc="bc -ql" \
	mkd="mkdir -pv" \
	mpv="mpv --no-input-default-bindings" \
	sxiv="sxiv -fabr" \
	vim="nvim"\
    d="dust --reverse --depth 1"\

alias \
	ls="ls --group-directories-first --color=auto" \
	la="ls -lAhv --group-directories-first --color=auto" \
	grep="grep -i --color=auto" \
	diff="diff --color=auto" \
	ip="ip --color=auto"\
    t="tree --filesfirst -aC"

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

mkcd() {
    mkdir -pv "$1" && cd "$_"
}

arc() {
    tar --zstd -cvf "$1.tar.zst" "${@:2}"
}

# dircolors
eval "$(dircolors "$HOME/.dircolors")"
