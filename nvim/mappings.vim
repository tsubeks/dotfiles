" no arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

""" Leader
noremap  <Space> <Nop>
map <Space> <leader>
" vnoremap <Space> <Esc>

map ; :

""" Basic
noremap <C-F> <C-D>
noremap <C-B> <C-U>

" Move across lines as they appear on display
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

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

" vnoremap <a-;> O
"
" nnoremap <A-i> vi
" nnoremap <A-a> va

" Quit
nnoremap <leader>q :q!<cr>
nnoremap <leader>Q :qa!<cr>

" Save
nnoremap <leader>s :update<cr>

" qq to record, Q to replay
" nnoremap qq <nop>
" nnoremap Q @q

" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" ----------------------------------------------------------------------------
" Tabs
" ----------------------------------------------------------------------------
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

" ----------------------------------------------------------------------------
" <tab> / <s-tab> | Circular windows navigation
" ----------------------------------------------------------------------------
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s

" ----------------------------------------------------------------------------
" Markdown headings
" ----------------------------------------------------------------------------
" nnoremap <leader>1 m`yypVr=``
" nnoremap <leader>2 m`yypVr-``
" nnoremap <leader>3 m`^i### <esc>``4l
" nnoremap <leader>4 m`^i#### <esc>``5l
" nnoremap <leader>5 m`^i##### <esc>``6l

" ----------------------------------------------------------------------------
" Moving lines
" ----------------------------------------------------------------------------
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


" ----------------------------------------------------------------------------
" <Leader>c Close quickfix/location window
" ----------------------------------------------------------------------------
" nnoremap <leader>c :cclose<bar>lclose<cr>

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
" nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>g :Gstatus<CR>
nnoremap <Leader>d :Gdiff<CR>

" ----------------------------------------------------------------------------
" vim-commentary
" ----------------------------------------------------------------------------
map  gc  <Plug>Commentary
nmap gcc <Plug>CommentaryLine

" ----------------------------------------------------------------------------
" ALE
" ----------------------------------------------------------------------------
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)

" ----------------------------------------------------------------------------
" Ranger
" ----------------------------------------------------------------------------

nnoremap <silent> <leader>/ :Ranger<CR>

" ----------------------------------------------------------------------------
" Files
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" FZF
" ----------------------------------------------------------------------------

nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>F :Files<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>L :Rg<CR>
nnoremap <silent> <leader>c :Commands<CR>
nnoremap <silent> <leader>C :Colors<CR>
nnoremap <silent> <leader>b :Buffers<CR>
" nnoremap <silent> <leader>`        :Marks<CR>
nnoremap <silent> q: :History:<CR>
nnoremap <silent> q: :History:<CR>
nnoremap <silent> <leader>h :History:<CR>

" Hide statusline of terminal buffer
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

autocmd FileType fzf tnoremap <buffer> <C-n> <Down>
autocmd FileType fzf tnoremap <buffer> <C-p> <Up>
