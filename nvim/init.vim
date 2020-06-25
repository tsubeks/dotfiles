""""""""""""
" Settings "
""""""""""""
syntax on
set termguicolors
set mouse=a

set shell=bash

set showmatch
set matchtime=2
set matchpairs+=<:>
set sidescroll=1

set noshowmode
set so=999
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
" set signcolumn=number
set nu nornu
set expandtab
set smartindent
" set numberwidth=5
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Give more space for displaying messages.
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=50


"""""""""
" Plug  "
"""""""""

" install Plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'psliwka/vim-smoothie'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

"""""""""
" Theme "
"""""""""
colorscheme onehalfdark
set background=dark

""""""""""""
" mappings "
""""""""""""

map <silent> <leader>ee :e $HOME/.config/nvim/init.vim<CR>
map <silent> <leader>dd :e $HOME/.config/nvim/dev.dict<CR>
setl dictionary+=$HOME/.config/nvim/dev.dict

map ? /\<\><Left><Left>
map <silent> <leader>n :nohlsearch<CR>


" no arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

""" Leader
noremap  <Space> <Nop>
map <Space> <leader>

" Move across lines as they appear on display
nnoremap <expr> k v:count ? (v:count > 6 ? "m'" . v:count : '') . 'k' : 'gk'
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'

""""""""""
" Window "
""""""""""
" qq to record, Q to replay
nnoremap qq <nop>
nnoremap Q @q

"""""""""
" lines "
"""""""""
nnoremap <silent> <S-k> :move-2<cr>
nnoremap <silent> <S-j> :move+<cr>
nnoremap <silent> <S-h> <<
nnoremap <silent> <S-l> >>
xnoremap <silent> <S-k> :move-2<cr>gv
xnoremap <silent> <S-j> :move'>+<cr>gv
xnoremap <silent> <S-h> <gv
xnoremap <silent> <S-l> >gv
xnoremap < <gv
xnoremap > >gv

" vim-fugitive
" nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>g :vertical Gstatus<CR>
nnoremap <Leader>d :Gvdiff<CR>

" vim-commentary
map  gc  <Plug>Commentary
nmap gcc <Plug>CommentaryLine

let g:ranger_command_override = 'ranger --cmd "set show_hidden=true" --cmd "set column_ratios=[1,1]"'
let g:ranger_replace_netrw = 1
let g:ranger_map_keys = 0

"???
nnoremap <silent> gh :wincmd h<CR>
nnoremap <silent> gj :wincmd j<CR>
nnoremap <silent> gk :wincmd k<CR>
nnoremap <silent> gl :wincmd l<CR>

" nnoremap <silent> <leader>/ :vsplit<cr>
" nnoremap <silent> <leader>- :split<cr>
" nnoremap <silent> <leader>bq :q!<cr>
" nnoremap <silent> <leader>bu :update<cr>
" nnoremap <silent> <leader>bn :bn<CR>
" nnoremap <silent> <leader>bp :bp<CR>
" nnoremap <silent> <leader>bl :ls<CR>

" nnoremap <silent> <leader>to :tabnew<CR>
" nnoremap <silent> <leader>tn :tabn<CR>
" nnoremap <silent> <leader>tp :tabp<CR>
" nnoremap <silent> <leader>bo :Ranger<CR>
command! -nargs=0 R :Ranger

map ; :
map U :redo<CR>
map <C-r> <nop>

" nnoremap gk gg
" nnoremap gj G

""""""""""""
" coc.nvim "
""""""""""""

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:coc_global_extensions = [
      \'coc-actions',
      \'coc-pairs',
      \'coc-json',
      \'coc-html',
      \'coc-tsserver',
      \'coc-eslint',
      \'coc-prettier',
      \'coc-highlight',
      \'coc-dictionary',
      \'coc-tag',
      \'coc-snippets',
      \'coc-lists',
      \'coc-yank',
      \'coc-yaml',
      \'coc-syntax',
      \'coc-git',
      \'coc-emoji',
      \'coc-calc',
      \'coc-xml',
      \'coc-marketplace',
      \'coc-webpack',
      \'coc-lines',
      \'coc-markdownlint',
      \'coc-vimlsp',
      \'coc-ecdict'
      \]

command! -nargs=0 Prettier :CocCommand prettier.formatFile

nmap <leader>p :CocCommand prettier.formatFile<cr>
vmap <leader>p <Plug>(coc-format-selected)
