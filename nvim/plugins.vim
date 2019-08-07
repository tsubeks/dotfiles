call plug#begin('~/.local/share/nvim/plugged')

" Navigation
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

" Language 
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" ! Coc needs additional packages to be installed manually?

" Beauty
Plug 'ayu-theme/ayu-vim'
" Plug 'Yggdroot/indentLine'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'

call plug#end()
