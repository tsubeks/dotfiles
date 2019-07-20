call plug#begin('~/.local/share/nvim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'

" Files
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Editor plugins
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-easy-align'

" Syntax hilighting
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Linting
Plug 'w0rp/ale'

" Formating
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Theme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" Line
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'edkolev/tmuxline.vim'

call plug#end()
