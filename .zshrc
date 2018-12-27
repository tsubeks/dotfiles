ZPLUG_SUDO_PASSWORD=
ZPLUG_PROTOCOL=ssh
EDITOR="nvim"
alias ls="ls -Gal"
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
# alias rm="mv --backup=numbered --target-directory=${HOME}/.Trash"
# export MSYS='winsymlinks'
# alias open=start
# ;;

neofetch

source $HOME/.zplug/init.zsh


autoload colors && colors
setopt prompt_subst

zplug 'plugins/git', from:oh-my-zsh, defer:1
zplug 'themes/sorin', from:oh-my-zsh, defer:1
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

zplug load --verbose
