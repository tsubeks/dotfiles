""""""""""""
" Settings "
"""""""""""
syntax on
set termguicolors

set shell=zsh

set so=999
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set signcolumn=yes
set expandtab
set smartindent
set nu rnu
set numberwidth=5
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

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

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

" navigation
Plug 'francoiscabrol/ranger.vim'
" for ranger
Plug 'rbgrouleff/bclose.vim'


" Editor
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
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

call plug#end()

"""""""""
" Theme "
"""""""""
colorscheme onehalfdark
set background=dark

" Set this. Airline will handle the rest.
let g:airline_theme='onehalfdark'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'y'    : '%R'}



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

" Move across lines as they appear on display
nnoremap <expr> k v:count ? (v:count > 6 ? "m'" . v:count : '') . 'k' : 'gk'
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'

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

" Quit
nnoremap <leader>q :q!<cr>
nnoremap <leader>Q :qa!<cr>

" Save
nnoremap <leader>s :update<cr>

" qq to record, Q to replay
nnoremap qq <nop>
nnoremap Q @q

" Moving windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>% :vsplit<CR>
nnoremap <leader>" :split<CR>

" Moving lines
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

" Ranger
"
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

" open ranger when vim open a directory
let g:ranger_replace_netrw = 1
let g:ranger_map_keys = 0

" open in current window
nnoremap <leader>// :Ranger<CR>

" open window left
nnoremap <leader>/h :lefta  vsp <bar> :wincmd h <bar> :Ranger <CR>

" open window right
nnoremap <leader>/l :rightb vsp <bar> :wincmd l <bar> :Ranger <CR>

" open window above
nnoremap <leader>/k :lefta  sp <bar>  :wincmd k <bar> :Ranger <CR>

" open window below
nnoremap <leader>/j :rightb sp <bar>  :wincmd j <bar> :Ranger <CR>

""""""""""""
" coc.nvim "
""""""""""""

if executable('rg')
    let g:rg_derive_root='true'
endif

command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 C :CocConfig

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> <leader>[g <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

autocmd BufEnter *.tsx set filetype=typescript
