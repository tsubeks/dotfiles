call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'christoomey/vim-tmux-navigator'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'

Plug 'editorconfig/editorconfig-vim'

Plug 'justinmk/vim-sneak'

Plug 'terryma/vim-multiple-cursors'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tomtom/tcomment_vim'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sensible'

Plug 'sheerun/vim-polyglot'

Plug 'joshdick/onedark.vim'
Plug 'connorholyday/vim-snazzy'


" Does support tmux sync
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'

Plug 'w0rp/ale'

call plug#end()
