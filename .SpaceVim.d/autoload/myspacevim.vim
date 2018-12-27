"
" autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat

func! myspacevim#before() abort
    "let g:neomake_enabled_c_makers = ['clang']
endf

func! myspacevim#after() abort
  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END

  " let s:format_path = $HOME.'/.SpaceVim.d/autoload/neoformat/formatters/'
"
  " let s:format_files = [
    " \'css.vim',
    " \'html.vim',
    " \'javascript.vim',
    " \'jsx.vim',
    " \'graphql.vim',
  " \]
"
  " for file in s:format_files
    " if filereadable(s:format_path.file)
      " exec "so ".s:format_path.file
    " endif
  " endfor
endf
