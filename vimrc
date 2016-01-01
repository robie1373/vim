syntax enable
set number
set ts=2
set autoindent
set expandtab
set shiftwidth=2
set cursorline
set showmatch
set incsearch
set hls

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_jump_expansion = 0
au FileType ex,exs,rb, py let b:delimitMate_matchpairs = "do:end"

let test#ruby#minitest#options = '--verbose --pride'
let python_highlight_all = 1
let mapleader="\<Space>"

vnoremap. :norm.<CR>
inoremap jk <ESC>
inoremap <C-J> <C-W><C-J>
inoremap <C-K> <C-W><C-K>
inoremap <C-L> <C-W><C-L>
inoremap <C-H> <C-W><C-H>

execute pathogen#infect()

set background=dark
try
  colorscheme solarized
catch
endtry

if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

"VIM Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set guifont=Inconsolata:h14.00 "best font ever
"ignored directories which command-t will use too. Make sure _build is in here
set wildignore=*.o,*.obj,.git,node_modules/**,bower_components/**,**/node_modules/**,_build/**,deps/**

"run tests right from vim - super helpful
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

