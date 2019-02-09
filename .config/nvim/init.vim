"  andreyorst/dotfiles
"  kristijanhusak/neovim-config
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
