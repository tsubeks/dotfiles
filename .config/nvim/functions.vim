let s:hidden_all = 0

function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

" nnoremap <S-h> :call ToggleHiddenAll()<CR>
call ToggleHiddenAll()

" Terminal Function
let s:term_buf = 0
let s:term_win = 0

function! TermToggle(height)
if win_gotoid(s:term_win)
    hide
else
    new terminal
    exec "resize ".a:height
    try
	exec "buffer ".s:term_buf
	exec "bd terminal"
    catch
	call termopen($SHELL, {"detach": 0})
	let s:term_buf = bufnr("")
	setlocal nonu nornu scl=no nocul
    endtry
    startinsert!
    let s:term_win = win_getid()
endif
endfunction
