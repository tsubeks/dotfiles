"""""""""
" Theme "
"""""""""

" let g:indentLine_char = ''
" let g:indentLine_first_char = ''
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0

" let ayucolor="mirage"
colorscheme onedark

" Set this. Airline will handle the rest.
let g:airline_theme='onedark'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'y'    : '%R'}

" Tmuxline snapshot

" autocmd Tmuxline 
" autocmd TmuxlineSnapshot! $HOME/Code/dotfiles/tmux/line.conf

"""""""""""""""""""""
" FileTree | Ranger "
"""""""""""""""""""""

let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

" open ranger when vim open a directory
let g:ranger_replace_netrw = 1
let g:ranger_map_keys = 0

"""""""
" FZF "
"""""""

if has('nvim') || has('gui_running')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif


" Hide statusline of terminal buffer
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" ----------------------------------------------------------------------------
" vim-signify
" ----------------------------------------------------------------------------
let g:signify_vcs_list          = ['git']
let g:signify_skip_filetype     = { 'journal': 1 }
let g:signify_sign_add          = '│'
let g:signify_sign_change       = '│'
let g:signify_sign_changedelete = '│'
let g:signify_sign_delete       = '│'
let g:signify_sign_show_text = 1
let g:signify_sign_show_count = 0

" ----------------------------------------------------------------------------
" ALE
" ----------------------------------------------------------------------------
" let g:ale_linters = {'java': [], 'yaml': [], 'scala': [], 'clojure': []}
" let g:ale_fixers = {'ruby': ['rubocop']}
let g:ale_sign_column_always = 1
let g:ale_lint_delay = 1000
let g:ale_sign_warning = '──'
let g:ale_sign_error = '══'
