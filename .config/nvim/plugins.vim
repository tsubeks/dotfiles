call plug#begin('~/.local/share/nvim/plugged')

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Plug '/usr/local/opt/fzf'
" Plug 'junegunn/vim-easy-align'
" Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-better-default'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'w0rp/ale'

call plug#end()
