# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

# -- Aliases --
alias n="nvim"
alias f='nvim $(fzf)'

# -- Custom Prompt --
PS1=' \[\e[38;5;70m\]\w\[\e[0m\] 󰁕 '

# -- Eza --
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

fastfetch
