#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export LANG=en_US.UTF-8

# eval "$(starship init bash)"
eval "$(zoxide init bash)"

PS1='\[\e[38;5;241m\]\w\[\e[0m\] 󰘧 ' # prompt

export PATH=$PATH:/home/ayush/.spicetify
export PATH=$HOME/.local/bin:$PATH

## CUSTOM ALIASES ##
alias vim='nvim'
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-permissions --no-user"
alias f='nvim $(fzf)'
alias cd='z'
alias warp='/home/ayush/warp.sh'
