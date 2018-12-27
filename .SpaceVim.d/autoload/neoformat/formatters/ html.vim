function! neoformat#formatters#html#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#html#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'html'],
        \ 'stdin': 1,
        \ }
endfunction
