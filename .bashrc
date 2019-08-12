#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# YE OLDE ALIASES
alias ls='ls --color=auto'
alias bsp='vim ~/.config/bspwm/bspwmrc'
alias hk='vim ~/.config/sxhkd/sxhkdrc'
alias xr='vim ~/.Xresources'

export PS1="[\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;4m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \W]>\[$(tput sgr0)\]"
