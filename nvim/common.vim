syntax on
set mouse=a
set termguicolors
set background=dark

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

set shell=fish

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
