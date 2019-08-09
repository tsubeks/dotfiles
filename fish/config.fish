###########
# Exports #
###########
set fish_greeting
set -x TERM "xterm-256color"
set -x EDITOR nvim
set -x PATH "$PATH:$HOME/Code/Tools/flutter/bin"
# set -x FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
# one time run
# defaults write com.apple.iphonesimulator AllowFullscreenMode -bool YES
set -x LC_ALL "en_US.UTF-8"
set -x FZF_DEFAULT_COMMAND "rg --files --hidden"

#########
# CLang #
#########
#
#
# Headers on MacOs
# https://stackoverflow.com/questions/53169970/where-are-the-c-headers-in-macos-mojave?noredirect=1
#

# llvm is keg-only, which means it was not symlinked into /usr/local,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.

# If you need to have llvm first in your PATH run:
set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths

# For compilers to find llvm you may need to set:
set -gx CFLAGS "-I/usr/local/opt/llvm/include"
set -gx CPPFLAGS "-I/usr/local/opt/llvm/include"
# set -gx LDFLAGS "-L/usr/local/opt/llvm/lib"
# To use the bundled libc++ please add the following LDFLAGS:
set -gx LDFLAGS "-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"


#########
# Alias #
#########

alias vim "nvim"
alias tmux "tmux -f ~/.config/tmux/tmux.conf"
alias ls "exa -l"
alias edit "code-insiders"
alias code "code-insiders"
alias ci "code-insiders"
alias sim "open -a Simulator"
