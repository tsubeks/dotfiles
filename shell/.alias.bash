#!/usr/bin/env bash
# https://github.com/Blaradox/dotFiles/blob/master/shell/.funcs.bash

alias vim="nvim"
alias tmux="tmux -f ~/.config/tmux/tmux.conf"

# Use colors always
alias tree="tree -C --dirsfirst -I '.git'"
alias egrep="egrep --color=auto"
if [[ $OSTYPE == darwin* ]]; then
  alias ls="/usr/local/bin/gls --color --classify --group-directories-first --human-readable"
  # alias ls="exa -l"
elif [[ $OSTYPE == linux* ]]; then
  alias ls="ls --color --classify --group-directories-first --human-readable"
  # alias ls="exa -l"
fi
