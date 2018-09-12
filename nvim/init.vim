" call plug#begin('~/.vim/plugged')
call plug#begin('~/.local/share/nvim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" Plug 'edkolev/tmuxline.vim'
Plug 'kaicataldo/material.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
" autocmd TextChanged,TextChangedI <buffer> silent write

if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme material 
let g:material_terminal_italics = 1
" let g:material_theme_style = 'default' | 'palenight' | 'dark'
let g:lightline = { 'colorscheme': 'material_vim' }
set laststatus=2
set noshowmode

