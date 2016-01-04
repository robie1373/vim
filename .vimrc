syntax enable
set number
set ts=2
set autoindent
set expandtab
set shiftwidth=2
set cursorline
set showmatch
set hls
let python_highlight_all = 1
let mapleader="\<Space>"

vnoremap. :norm.<CR>
inoremap jk <ESC>

execute pathogen#infect()
