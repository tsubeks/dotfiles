# Exports
set fish_greeting
set -x TERM "xterm-256color"
set -x EDITOR nvim
set -x PATH "$PATH:$HOME/Code/Tools/flutter/bin"
# set -x FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
# one time run
# defaults write com.apple.iphonesimulator AllowFullscreenMode -bool YES
set -x LC_ALL "en_US.UTF-8"


alias vim "nvim"
alias tmux "tmux -f ~/.config/tmux/tmux.conf"
alias ls "exa -l"
alias edit "code-insiders"
alias code "code-insiders"
alias ci "code-insiders"
alias sim "open -a Simulator"
