#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# generate colors file and use it if present
# dircolors -p > /etc/DIR_COLORS
[[ -f /etc/DIR_COLORS ]] && eval `dircolors /etc/DIR_COLORS`

PS1='[\u@\h \W]\$ '

HISTSIZE=500000
HISTFILESIZE=1000000
HISTCONTROL=ignoreboth

alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -la'
alias grep='grep --color=auto'
alias sudo='sudo '
alias vi='vim'
alias diff='colordiff'

export EDITOR='vim'
export BROWSER='firefox'

stty -ixon
