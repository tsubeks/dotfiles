# Exports
set -x TERM "screen-256color-bce"
set -x EDITOR nvim
set -x FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"


alias vim="nvim"
alias tmux="tmux -2 -f ~/.config/tmux/tmux.conf"
alias ls="exa -l"
