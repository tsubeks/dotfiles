ZPLUG_SUDO_PASSWORD=
ZPLUG_PROTOCOL=ssh
EDITOR="nvim"
PAGER="nvim"

# Linuxify
# most programs
export MANPATH="/usr/local/share/man:$MANPATH"
export INFOPATH="/usr/local/share/info:$INFOPATH"

# coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# make
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/make/libexec/gnuman:$MANPATH"

# m4
export PATH="/usr/local/opt/m4/bin:$PATH"

# file-formula
export PATH="/usr/local/opt/file-formula/bin:$PATH"

# unzip
export PATH="/usr/local/opt/unzip/bin:$PATH"

# python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# flex
export PATH="/usr/local/opt/flex/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/flex/lib"
export CPPFLAGS="-I/usr/local/opt/flex/include"

# bison
export PATH="/usr/local/opt/bison/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/bison/lib"

# libressl
export PATH="/usr/local/opt/libressl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libressl/lib"
export CPPFLAGS="-I/usr/local/opt/libressl/include"
export PKG_CONFIG_PATH="/usr/local/opt/libressl/lib/pkgconfig"

alias ls="ls -Ga"
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
# alias edit="kak"
# alias e="kak"
# alias nvim="kak"

# alias rm="mv --backup=numbered --target-directory=${HOME}/.Trash"
# export MSYS='winsymlinks'
# alias open=start
# ;;

# neofetch

source $HOME/.zplug/init.zsh
PS1=" %F{1;31}%1d "

autoload colors && colors
setopt prompt_subst

zplug 'plugins/git', from:oh-my-zsh, defer:1
# zplug 'themes/sorin', from:oh-my-zsh, defer:1
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

if ! zplug check --verbose; then
	# --verbose
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi

zplug load 
# --verbose
