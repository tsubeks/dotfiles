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
nnoremap <silent><S-j> :m .+1<CR>==
nnoremap <silent><S-k> :m .-2<CR>==
inoremap <silent><S-j> <Esc>:m .+1<CR>==gi 
inoremap <silent><S-k> <Esc>:m .-2<CR>==gi 
vnoremap <silent><S-j> :m '>+1<CR>gv=gv
vnoremap <silent><S-k> :m '<-2<CR>gv=gv

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
nnoremap <leader>q :q<cr>
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
