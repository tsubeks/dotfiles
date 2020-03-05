"  Inspired by
"
"  tpope/dotfiles
"  andreyorst/dotfiles
"  kristijanhusak/neovim-config

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible
let s:config_path = $HOME.'/.config/nvim/'

let s:config_files = [
	\'functions.vim',
	\'plugins.vim',
	\'common.vim',
	\'languages.vim',
	\'plugin_conf.vim',
	\'mappings.vim',
\]

for file in s:config_files
	if filereadable(s:config_path.file)
		exec "so ".s:config_path.file
	endif
endfor
