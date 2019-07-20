#!/bin/bash
# MacOS defaults
# Dock:
# defaults write com.apple.dock autohide-delay -float 0
# defaults write com.apple.dock autohide-time-modifier -float 0.5
# killall Dock
# Keys:
# defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '<dict><key>enabled</key><false/></dict>'

ln -s $HOME/Code/dotfiles/shell/.* $HOME/
ln -s $HOME/Code/dotfiles/nvim $HOME/.config/.
ln -s $HOME/Code/dotfiles/kitty $HOME/.config/.
ln -s $HOME/Code/dotfiles/alacritty $HOME/.config/.
ln -s $HOME/Code/dotfiles/ranger $HOME/.config/.
ln -s $HOME/Code/dotfiles/tmux $HOME/.config/.
