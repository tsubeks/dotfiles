call plug#begin('~/.local/share/nvim/plugged')

" Plug 'junegunn/vim-easy-align'

Plug 'christoomey/vim-tmux-navigator'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Plug 'liuchengxu/vim-better-default'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tomtom/tcomment_vim'

Plug 'tpope/vim-surround'

Plug 'w0rp/ale'

call plug#end()
