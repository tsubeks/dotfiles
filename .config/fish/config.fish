# Exports
set -x TERM "xterm-256color"
set -x EDITOR nvim
set -x FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"


alias vim="nvim"
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
alias ls="exa -l"
