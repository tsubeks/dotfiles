" let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

" if !filereadable(vimplug_exists)
"   if !executable("curl")
"     echoerr "You have to install curl or first install vim-plug yourself!"
"     execute "q!"
"   endif
"   echo "Installing Vim-Plug..."
"   echo ""
"   silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   let g:not_finish_vimplug = "yes"

"   autocmd VimEnter * PlugInstall
" endif
"
"   Plug
"

" call plug#begin('~/.vim/plugged')
" call plug#begin('~/.local/share/nvim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Plugin outside ~/.vim/plugged with post-update hook
" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" Plug 'edkolev/tmuxline.vim'
" Plug 'kaicataldo/material.vim'
" Plug 'itchyny/lightline.vim'
"

" Plug 'szw/vim-maximizer'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" call plug#end()

"
" Encoding
"

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary


"" Fix backspace indent
set backspace=indent,eol,start
" Enable hidden buffers
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Directories for swp files
set nobackup
set noswapfile
set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

"
" Abbreviations
"
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev q q!
cnoreabbrev Qall qall

"
"   Map
"

" <leader>
let mapleader = ","

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Copy/Paste/Cut
"" Copy/Paste/Cut
"" Copy/Paste/Cut
noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" expand dir
" cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Git
"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>
noremap <Leader>ga :Gwrite<CR>
"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>

" tnoremap <C-[> <C-\><C-n>
" Use ; for commands.
nnoremap ; :

" Use Q to execute default register.
nnoremap Q @q

" Quickly open/reload vim
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
" vmap < <gv
" vmap > >gv
"
"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Use <C-L> to clear the highlighting of :set hlsearch.

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"if maparg('<C-L>', 'n') ==# ''
"  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
"endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"
" Set
"

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.


" set cursorline              " highlight current line
" set cursorcolumn            " highlight current column
set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set formatoptions+=o    " Continue comment marker in new lines.
set mouse=                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set backspace=indent,eol,start
set softtabstop=0           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed

set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

set list                " Show problematic characters.
" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

"
"   Auto
"

autocmd! BufWritePost $MYVIMRC so $MYVIMRC 

"
"   Apperance
"
"
set title
set titleold="Terminal"
set titlestring=%F
" Required:
set t_Co=256
set guioptions=egmrti
filetype plugin indent on
syntax on
colorscheme default

set statusline=🍓%F%m%r%h%w%=%{&ff}\ %l\/%L\ %c🍓
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

set wrap
set wm=2
set textwidth=79

set autoread

set noruler
set number
set background=light
set laststatus=2
set shortmess=F
set noshowmode
set noshowcmd
set nostartofline       " Do not jump to first character with page commands.

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
