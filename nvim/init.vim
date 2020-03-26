"  Inspired by
"
"  tpope/dotfiles
"  andreyorst/dotfiles
"  kristijanhusak/neovim-config

"""""""""
" init  "
"""""""""

" install Plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

" navigation
Plug 'christoomey/vim-tmux-navigator'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Editor
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'

" language 
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" ! Coc needs additional packages to be installed manually?

" beauty
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'

call plug#end()

""""""""""""""""""""
" plugin settings  "
""""""""""""""""""""

let g:auto_save = 1  " enable AutoSave on Vim startup

"""""""
" COC "
"""""""

command! -nargs=0 Prettier :CocCommand prettier.formatFile


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

""""""""""""
" settings "
""""""""""""

let s:hidden_all = 0

set noshowmode
set noruler
set laststatus=2
set noshowcmd

syntax on
set termguicolors
set background=dark

set clipboard=unnamedplus
set noswapfile

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

set shell=zsh

" Indentation
set wrap
set textwidth=79
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent

filetype on
filetype plugin on
filetype indent on

" autoread
set autoread
au FocusGained * :checktime

" 80 chars/line
" set textwidth=0
set number relativenumber
set nu rnu

if exists('&colorcolumn')
  set colorcolumn=80
endif

function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction


" nnoremap <S-h> :call ToggleHiddenAll()<CR>
" call ToggleHiddenAll()


""""""""""""
" mappings "
""""""""""""

" clear search hilight
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" no arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

""" Leader
noremap  <Space> <Nop>
map <Space> <leader>

map ; :

""" Basic
" noremap <C-F> <C-D>
" noremap <C-B> <C-U>

" Move across lines as they appear on display
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

" Kakoune style mappings
"
" Move
noremap gj G
noremap gk gg
noremap gh 0
noremap gl $

" Select
noremap Gj <Esc>VG
noremap Gk <Esc>Vgg
noremap Gh <Esc>v0
noremap Gl <Esc>v$

" vnoremap <a-;> O
"
" nnoremap <A-i> vi
" nnoremap <A-a> va

" Quit
nnoremap <leader>q :q!<cr>
nnoremap <leader>Q :qa!<cr>

" Save
nnoremap <leader>s :update<cr>

" qq to record, Q to replay
" nnoremap qq <nop>
" nnoremap Q @q

" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap <silent> <leader>b] :bnext<cr>
nnoremap <silent> <leader>b[ :bprev<cr>

" ----------------------------------------------------------------------------
" Tabs
" ----------------------------------------------------------------------------
nnoremap <silent> <leader>t] :tabn<cr>
nnoremap <silent> <leader>t[ :tabp<cr>

" ----------------------------------------------------------------------------
" <tab> / <s-tab> | Circular windows navigation
" ----------------------------------------------------------------------------
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s

" ----------------------------------------------------------------------------
" Markdown headings
" ----------------------------------------------------------------------------
" nnoremap <leader>1 m`yypVr=``
" nnoremap <leader>2 m`yypVr-``
" nnoremap <leader>3 m`^i### <esc>``4l
" nnoremap <leader>4 m`^i#### <esc>``5l
" nnoremap <leader>5 m`^i##### <esc>``6l

" ----------------------------------------------------------------------------
" Moving lines
" ----------------------------------------------------------------------------
" nnoremap <silent> <S-k> :move-2<cr>
" nnoremap <silent> <S-j> :move+<cr>
" nnoremap <silent> <S-h> <<
" nnoremap <silent> <S-l> >>
" xnoremap <silent> <S-k> :move-2<cr>gv
" xnoremap <silent> <S-j> :move'>+<cr>gv
" xnoremap <silent> <S-h> <gv
" xnoremap <silent> <S-l> >gv
xnoremap < <gv
xnoremap > >gv


" ----------------------------------------------------------------------------
" <Leader>c Close quickfix/location window
" ----------------------------------------------------------------------------
" nnoremap <leader>c :cclose<bar>lclose<cr>

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
" nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>g :vertical Gstatus<CR>
nnoremap <Leader>d :Gvdiff<CR>

" ----------------------------------------------------------------------------
" vim-commentary
" ----------------------------------------------------------------------------
map  gc  <Plug>Commentary
nmap gcc <Plug>CommentaryLine

" ----------------------------------------------------------------------------
" ALE
" ----------------------------------------------------------------------------
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)

" ----------------------------------------------------------------------------
" Ranger
" ----------------------------------------------------------------------------

nnoremap <silent> <leader>/ :Ranger<CR>

" ----------------------------------------------------------------------------
" Files
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" FZF
" ----------------------------------------------------------------------------

nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>F :Files<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>L :Rg<CR>
nnoremap <silent> <leader>c :Commands<CR>
nnoremap <silent> <leader>C :Colors<CR>
nnoremap <silent> <leader>bb :Buffers<CR>
" nnoremap <silent> <leader>`        :Marks<CR>
nnoremap <silent> q: :History:<CR>
nnoremap <silent> q: :History:<CR>
nnoremap <silent> <leader>h :History:<CR>

" Hide statusline of terminal buffer
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

autocmd FileType fzf tnoremap <buffer> <C-n> <Down>
autocmd FileType fzf tnoremap <buffer> <C-p> <Up>
