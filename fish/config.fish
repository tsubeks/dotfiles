# Exports
set -x TERM "xterm-256color"
set -x EDITOR nvim
set -x FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
set -x PATH "$PATH:$HOME/Code/flutter/bin"


alias vim="nvim"
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
alias ls="exa -l"
alias code "code-insiders"
alias ci "code-insiders"
