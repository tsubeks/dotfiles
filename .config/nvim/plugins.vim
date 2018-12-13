filetype off

call plug#begin('~/.vim/bundle')

	"Look
	Plug 'chriskempson/base16-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	"Tools
	Plug 'scrooloose/nerdcommenter'
	Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
	Plug 'scrooloose/nerdtree'

	"Plug 'kien/ctrlp.vim'
	" Plug 'andreyorst/SimpleClangFormat.vim'
	" Plug 'andreyorst/SimpleSnippets-snippets'
	" Plug 'andreyorst/SimpleSnippets.vim'
	" Plug 'andreyorst/SimpleWorkspaces.vim'
	" Plug 'justinmk/vim-sneak'
	" Plug 'raimondi/delimitMate'
	" Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
	" Plug 'tpope/vim-surround'
	" Plug 'wellle/targets.vim'

	"Files

	"Plug 'shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
	"
	" Languages
	" Plug 'w0rp/ale'
	" Plug 'zchee/deoplete-clang'
	" Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
	" Plug 'majutsushi/tagbar'

	" Rust
	" Plug 'rust-lang/rust.vim'
    "
	" Javascript
	" Plug 'pangloss/vim-javascript'
	" Plug 'jparise/vim-graphql'

	" Syntax Highlighting
	" Plug 'justinmk/vim-syntax-extra'
	" Plug 'bfrg/vim-cpp-modern'
	
	" Syntax
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()
