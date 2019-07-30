noremap  <Space> <Nop>
map <Space> <leader>
vnoremap <Space> <Esc>

map ; :

""" Basic
noremap <C-F> <C-D>
noremap <C-B> <C-U>

" Move across lines as they appear on display
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

""" Mapings

" Move lines around
" nnoremap <silent><S-j> :m .+1<CR>==
" nnoremap <silent><S-k> :m .-2<CR>==
" inoremap <silent><S-j> <Esc>:m .+1<CR>==gi 
" inoremap <silent><S-k> <Esc>:m .-2<CR>==gi 
" vnoremap <silent><S-j> :m '>+1<CR>gv=gv
" vnoremap <silent><S-k> :m '<-2<CR>gv=gv

" Common fixes
nnoremap <silent>gb :bn<Cr>
nnoremap <silent>gB :bp<Cr>
nnoremap <silent>ge :exec "e ".expand("<cWORD>")<Cr>


" Kakoune style mappings
noremap gj G
noremap gk gg
noremap gh 0
noremap gl $

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
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" TComment
let g:tcomment_maps = 0
nnoremap <silent><leader>c :TComment<Cr>
inoremap <silent><leader>c <Esc>:TComment<Cr>a
vnoremap <silent><leader>c :'<,'>TComment<Cr>
call tcomment#type#Define('c', '// %s')

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

" FZF
nnoremap <silent><leader>p :Files
inoremap <silent><leader>p <Esc>:Files<Cr>
vnoremap <silent><leader>p <Esc>:TComment<Cr>


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

" ----------------------------------------------------------------------------
" Markdown headings
" ----------------------------------------------------------------------------
nnoremap <leader>1 m`yypVr=``
nnoremap <leader>2 m`yypVr-``
nnoremap <leader>3 m`^i### <esc>``4l
nnoremap <leader>4 m`^i#### <esc>``5l
nnoremap <leader>5 m`^i##### <esc>``6l

" ----------------------------------------------------------------------------
" Moving lines
" ----------------------------------------------------------------------------
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv


" ----------------------------------------------------------------------------
" <Leader>c Close quickfix/location window
" ----------------------------------------------------------------------------
nnoremap <leader>c :cclose<bar>lclose<cr>

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
nmap     <Leader>g :Gstatus<CR>gg<c-n>
nnoremap <Leader>d :Gdiff<CR>

" ----------------------------------------------------------------------------
" vim-commentary
" ----------------------------------------------------------------------------
" map  gc  <Plug>Commentary
" nmap gcc <Plug>CommentaryLine

nnoremap <silent> <Leader>P :Files<CR>
nnoremap <silent> <Leader>p :GFiles<CR>
" nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>c        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>l        :Lines<CR>
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <Leader>`        :Marks<CR>
" nnoremap <silent> q: :History:<CR>
" nnoremap <silent> q/ :History/<CR>

