" Main
nnoremap <Space> <nop>
let mapleader = "\<Space>"
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
nnoremap <leader>so :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>se :e ~/.config/nvim/init.vim<cr>

" map ; :
" noremap ;; ;
" noremap ,, ,

" NERDTree
noremap <silent><Leader>n <Esc>:NERDTreeToggle<CR>
tnoremap <silent><Leader>n <C-\><C-n>:NERDTreeToggle<CR>
"
" Common fixes
"	window/buffer managment
"
nnoremap <silent><C-w>w <Esc>:bd<CR>
nnoremap <silent>gb :bn<Cr>
nnoremap <silent>gB :bp<Cr>

"	nnoremap <silent>ge :exec "e ".expand("<cWORD>")<Cr>
	" The most important fix
"	nmap <F1> <nop>
"	imap <F1> <nop>

" Kakoune style mappings
noremap gj G
noremap gk gg
noremap gh 0
noremap gl $

noremap Gj <Esc>VG
noremap Gk <Esc>Vgg
noremap Gh <Esc>v0
noremap Gl <Esc>v$

"vnoremap <a-;> O
"vnoremap ; <Esc>
" noremap  <Space> <Nop>
" vnoremap <Space> <Esc>

nnoremap <A-i> vi
nnoremap <A-a> va

" Move lines around
nnoremap <silent><C-j> :m .+1<CR>==
nnoremap <silent><C-k> :m .-2<CR>==
inoremap <silent><C-j> <Esc>:m .+1<CR>==gi
inoremap <silent><C-k> <Esc>:m .-2<CR>==gi
vnoremap <silent><C-j> :m '>+1<CR>gv=gv
vnoremap <silent><C-k> :m '<-2<CR>gv=gv

" Move across lines as they appear on display
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

" Visual Selection Macro
"	xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

" Encoding
	" <F7> EOL format (dos <CR><NL>,unix <NL>,mac <CR>)
"		set  wcm=<Tab>
"		menu EOL.unix :set fileformat=unix<CR>
"		menu EOL.dos  :set fileformat=dos<CR>
"		menu EOL.mac  :set fileformat=mac<CR>
"		noremap  <F7> :emenu EOL.<Tab>

	" <F8> Change encoding
"		menu Enc.cp1251  :e! ++enc=cp1251<CR>
"		menu Enc.koi8-r  :e! ++enc=koi8-r<CR>
"		menu Enc.cp866   :e! ++enc=ibm866<CR>
"		menu Enc.utf-8   :e! ++enc=utf-8<CR>
"		menu Enc.ucs-2le :e! ++enc=ucs-2le<CR>
"		menu Enc.koi8-u  :e! ++enc=koi8-u<CR>
"		noremap  <F8> :emenu Enc.<Tab>

	" <F20> Convert file encoding
"		menu FEnc.cp1251  :set fenc=cp1251<CR>
"		menu FEnc.koi8-r  :set fenc=koi8-r<CR>
"		menu FEnc.cp866   :set fenc=ibm866<CR>
"		menu FEnc.utf-8   :set fenc=utf-8<CR>
"		menu FEnc.ucs-2le :set fenc=ucs-2le<CR>
"		menu FEnc.koi8-u  :set fenc=koi8-u<CR>
"		noremap  <F20> :emenu FEnc.<Tab>

" LanguageClient-Neovim
"	augroup LCN
"		autocmd!
"		autocmd FileType rust,c,cpp nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"		autocmd FileType rust,c,cpp nnoremap <silent> gh :call LanguageClient_textDocument_hover()<CR>
"		autocmd FileType rust,c,cpp nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
"		autocmd FileType rust,c,cpp nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
"		autocmd FileType rust,c,cpp nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
"	augroup end

" HlWordUnderCursor
"	nnoremap <silent><C-h> :call ToggleCursorWordHl()<Cr>

" Mapjitsu
	" Getter and setter generation

	" WARN: This is total mess. Don't try this at home. Requires ninja skills.

	" Generates getter and setter for C++ private class items.

	"     Input  Format: type name;
	"     Output Format: type obtainName() {return name;}
	"                    void establishName(type Name) {name = Name;}

	" For example: 'unsigned char* letter;' will produce:
	" unsigned char* obtainLetter() {return letter;}
	" void establishLetter(unsigned char* Letter) {letter = Letter;}
	" just above 'private:' keyword.
	" You can change function names in this string only
	" Search for hiobtain and hiestablish and change
	" to higet hiset or to any hi* pattern
	" WARNING: must be used *below* 'private' keyword in a class scope
"	augroup CPP
"		autocmd!
"		autocmd FileType cpp,h,hpp nnoremap <F5> <Esc>0:set nohlsearch<CR>
"					\/;<CR>y^?private<CR>:-1read $HOME/.vim/snippets/getSet.cpp<CR>
"					\0Pa()<Esc>bbyw~hiobtain<Esc>/;<CR>P:noh<CR>==j0==/)<CR>bPnbb~h
"					\iestablish<Esc>nPnb~/ =<CR>P/;<CR>Pnb~?obtain<CR>y^j/(<CR>p^
"					\:set hlsearch<CR>:noh<CR>
"	augroup end

