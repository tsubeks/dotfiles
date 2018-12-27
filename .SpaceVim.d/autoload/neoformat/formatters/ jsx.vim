function! neoformat#formatters#jsx#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#jsx#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin', '--stdin-filepath', '"%:p"'],
        \ 'stdin': 1,
        \ }
endfunction
