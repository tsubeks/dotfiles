""""""""""""
" Settings "
"""""""""""
syntax on
set termguicolors
set mouse=a

set shell=zsh

set so=999
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set signcolumn=yes
set expandtab
set smartindent
set nu rnu
set numberwidth=5
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Give more space for displaying messages.
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=50

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

"""""""""
" Plug  "
"""""""""

" install Plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

" navigation
Plug 'christoomey/vim-tmux-navigator'
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
" for ranger
Plug 'rbgrouleff/bclose.vim'



" Editor
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'

" language 
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" ! Coc needs additional packages to be installed manually?

" beauty
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'chriskempson/base16-vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

call plug#end()

"""""""""
" Theme "
"""""""""
colorscheme onehalfdark
set background=dark

" Set this. Airline will handle the rest.
" let g:airline_theme='onehalfdark'
" let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'y'    : '%R'}



" ----------------------------------------------------------------------------
" vim-signify
" ----------------------------------------------------------------------------
let g:signify_vcs_list          = ['git']
let g:signify_skip_filetype     = { 'journal': 1 }
let g:signify_sign_add          = '│'
let g:signify_sign_change       = '│'
let g:signify_sign_changedelete = '│'
let g:signify_sign_delete       = '│'
let g:signify_sign_show_text = 1
let g:signify_sign_show_count = 0

""""""""""""
" mappings "
""""""""""""
" clear search hilight
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" no arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

""" Leader
noremap  <Space> <Nop>
map <Space> <leader>

" Move across lines as they appear on display
nnoremap <expr> k v:count ? (v:count > 6 ? "m'" . v:count : '') . 'k' : 'gk'
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'

" Kakoune style mappings
"
" Move
noremap gj G
noremap gk gg
noremap gh 0
noremap gl $

" Select
noremap Gj <Esc>VG
noremap Gk <Esc>Vgg
noremap Gh <Esc>v0
noremap Gl <Esc>v$

" Quit
nnoremap <leader>q :q!<cr>
nnoremap <leader>Q :qa!<cr>

" Save
nnoremap <leader>s :update<cr>

" qq to record, Q to replay
nnoremap qq <nop>
nnoremap Q @q

" Moving windows
    nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>% :vsplit<CR>
nnoremap <leader>" :split<CR>

" Moving lines
nnoremap <silent> <S-k> :move-2<cr>
nnoremap <silent> <S-j> :move+<cr>
nnoremap <silent> <S-h> <<
nnoremap <silent> <S-l> >>
xnoremap <silent> <S-k> :move-2<cr>gv
xnoremap <silent> <S-j> :move'>+<cr>gv
xnoremap <silent> <S-h> <gv
xnoremap <silent> <S-l> >gv
xnoremap < <gv
xnoremap > >gv

" vim-fugitive
" nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>g :vertical Gstatus<CR>
nnoremap <Leader>d :Gvdiff<CR>

" vim-commentary
map  gc  <Plug>Commentary
nmap gcc <Plug>CommentaryLine

" Ranger
"
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

" open ranger when vim open a directory
let g:ranger_replace_netrw = 1
let g:ranger_map_keys = 0

" open in current window
nnoremap <leader>/ :Ranger<CR>

" open window left
" nnoremap <leader>/h :lefta  vsp <bar> :wincmd h <bar> :Ranger <CR>

" " open window right
" nnoremap <leader>/l :rightb vsp <bar> :wincmd l <bar> :Ranger <CR>

" " open window above
" nnoremap <leader>/k :lefta  sp <bar>  :wincmd k <bar> :Ranger <CR>

" " open window below
" nnoremap <leader>/j :rightb sp <bar>  :wincmd j <bar> :Ranger <CR>

""""""""""""
" coc.nvim "
""""""""""""

if executable('rg')
    let g:rg_derive_root='true'
endif

"" CocInstall coc-emmet, coc-prettier, coc-highlight

" highlight colors 
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 C :CocConfig

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> <leader>[g <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction


" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd BufEnter *.tsx set filetype=typescript

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


"""""""
" FZF "
"""""""
""" Install bat for preview 
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.7 } }

nnoremap <silent> <space>b  :Buffers<CR>
nnoremap <silent> <space>f  :GFiles<CR>
nnoremap <silent> <space>F  :Files<CR>
nnoremap <silent> <space>a  :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <space>db  :<C-u>CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <space>c  :<C-u>CocFzfList commands<CR>
nnoremap <silent> <space>e  :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <space>l  :<C-u>CocFzfList location<CR>
nnoremap <silent> <space>o  :<C-u>CocFzfList outline<CR>
nnoremap <silent> <space>s  :<C-u>CocFzfList symbols<CR>
nnoremap <silent> <space>S  :<C-u>CocFzfList services<CR>
nnoremap <silent> <space>p  :<C-u>CocFzfListResume<CR>
