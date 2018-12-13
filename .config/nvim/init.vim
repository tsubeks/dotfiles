set nocompatible

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

let s:config_path = $HOME.'/.config/nvim/'
let s:config_files = [
	" \'functions.vim',
	" \'plugins.vim',
	" \'common.vim',
	" \'languages.vim',
	" \'mappings.vim',
	" \'plugin_conf.vim',
\]

for file in s:config_files
	if filereadable(s:config_path.file)
		exec "so ".s:config_path.file
	endif
endfor
