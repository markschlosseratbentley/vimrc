nnoremap <C-]> g<C-]>
set hlsearch
set tabstop=2
set shiftwidth=2
set expandtab
set tags=tags;/
autocmd! BufEnter * silent! lcd %:p:h
set backspace=indent,eol,start
colorscheme koehler
syntax on
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set lines=83 columns=150
" set colorcolumn=150
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set ignorecase "ignore case in vim searches 

