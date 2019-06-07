call plug#begin('~/.local/share/nvim/plugged')

" Other at top hm
Plug 'christoomey/vim-tmux-navigator'

" Files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Git
Plug 'airblade/vim-gitgutter'


" Editor plugins
Plug 'justinmk/vim-sneak'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'

" Syntax hilighting
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Linting
Plug 'w0rp/ale'

" Formating
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'editorconfig/editorconfig-vim'

" Theme
Plug 'joshdick/onedark.vim'
Plug 'connorholyday/vim-snazzy'

" Line
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'edkolev/tmuxline.vim'

call plug#end()
