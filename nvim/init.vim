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

" navigation
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'

" Editor
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-rooter'

" language 
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" beauty
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Plug 'tpope/vim-vinegar'
" Plug 'christoomey/vim-tmux-navigator'

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

" clear search hilight
" nnoremap <silent> <CR> :nohlsearch<CR><CR>

map ? /\<\><Left><Left>
map <silent> <leader>n :nohlsearch<CR>

nnoremap <silent> gb :bn<CR>
nnoremap <silent> gB :bp<CR>

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

noremap <leader>wq :q!<cr>
nnoremap <leader>wQ :qa!<cr>
nnoremap <leader>ws :update<cr>
" Moving windows
nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>wj :wincmd j<CR>
nnoremap <leader>wk :wincmd k<CR>
nnoremap <leader>wl :wincmd l<CR>
nnoremap <leader>% :vsplit<CR>
nnoremap <leader>" :split<CR>

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

" Ranger
"
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true" --cmd "set column_ratios=[1,1]"'

" open ranger when vim open a directory
let g:ranger_replace_netrw = 1
let g:ranger_map_keys = 0

" open in current window
nnoremap <leader>// :Ranger<CR>

" open window left
nnoremap <leader>/h :lefta  vsp <bar> :wincmd h <bar> :Ranger <CR>

" " open window right
nnoremap <leader>/l :rightb vsp <bar> :wincmd l <bar> :Ranger <CR>

" " open window above
nnoremap <leader>/k :lefta  sp <bar>  :wincmd k <bar> :Ranger <CR>

" " open window below
nnoremap <leader>/j :rightb sp <bar>  :wincmd j <bar> :Ranger <CR>


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

""""""""""""""
" vim-rooter "
""""""""""""""

let g:rooter_patterns = ['.root', 'package.json', '.git/']

"""""""
" FZF "
"""""""
""" Install bat for preview 
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.7 } }
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

nnoremap <silent> <space>b  :Buffers<CR>
nnoremap <silent> <space>f  :FZF ~<CR>
nnoremap <silent> <space>F  :GFiles<CR>
nnoremap <silent> <space>a  :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <space>db  :<C-u>CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <space>c  :<C-u>CocFzfList commands<CR>
nnoremap <silent> <space>e  :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <space>l  :<C-u>CocFzfList location<CR>
nnoremap <silent> <space>o  :<C-u>CocFzfList outline<CR>
nnoremap <silent> <space>s  :<C-u>CocFzfList symbols<CR>
nnoremap <silent> <space>S  :<C-u>CocFzfList services<CR>
nnoremap <silent> <space>p  :<C-u>CocFzfListResume<CR>
