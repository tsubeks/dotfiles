" If you use Alt in alacritty make sure you updated alacritty.yml as well
let mapleader = " "

""" Basic
noremap <C-F> <C-D>
noremap <C-B> <C-U>

""" gitgutter
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

" Toggle terminal on/off (neovim)
" if has('nvim')
" 	nnoremap <silent><leader><t> :call TermToggle(12)<CR>
" 	inoremap <silent><leader><t> <Esc>:call TermToggle(12)<CR>
" 	tnoremap <silent><leader><t> <C-\><C-n>:call TermToggle(12)<CR>
" 	" Terminal go back to normal mode
" 	tnoremap <silent><Esc> <C-\><C-n>
" endif

" Move across lines as they appear on display
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

""" Mapings

" <leader>n | NERD Tree
nnoremap <leader>n :NERDTreeToggle<cr>

" Move lines around
nnoremap <silent><A-j> :m .+1<CR>==
nnoremap <silent><A-k> :m .-2<CR>==
inoremap <silent><A-j> <Esc>:m .+1<CR>==gi
inoremap <silent><A-k> <Esc>:m .-2<CR>==gi
vnoremap <silent><A-j> :m '>+1<CR>gv=gv
vnoremap <silent><A-k> :m '<-2<CR>gv=gv

" Common fixes
nnoremap <silent>gb :bn<Cr>
nnoremap <silent>gB :bp<Cr>
 "nnoremap <silent>ge :exec "e ".expand("<cWORD>")<Cr>

" The most important fix
"nmap <F1> <nop>
"imap <F1> <nop>

" Kakoune style mappings
noremap gj G
noremap gk gg
noremap gh 0
noremap gl $

noremap Gj <Esc>VG
noremap Gk <Esc>Vgg
noremap Gh <Esc>v0
noremap Gl <Esc>v$

vnoremap <a-;> O
noremap  <Space> <Nop>
vnoremap <Space> <Esc>

nnoremap <A-i> vi
nnoremap <A-a> va

" Quit
inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa!<cr>

" Save
inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>
nnoremap <leader>s :update<cr>
nnoremap <leader>w :update<cr>

" qq to record, Q to replay
nnoremap Q @q

" nnoremap <silent> <Leader><Leader> :Files<CR>
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader><Enter>  :Buffers<CR>
nnoremap <silent> <Leader>L        :Lines<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <Leader>`        :Marks<CR>

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

" map f <Plug>Sneak_s
" map F <Plug>Sneak_S

map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
