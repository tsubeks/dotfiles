set mouse=a

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

syntax on
colorscheme onedark
set background=dark

" 80 chars/line
" set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif

