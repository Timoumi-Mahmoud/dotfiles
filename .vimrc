" Show line number
set number

" Status bar
set laststatus=2

" Enable synstax
syntax on

" Folder Tree with cntrl +b
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30 <cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30 <cr>

" Set compatibility to vim only
set nocompatible

" Automatically wrap text that extends beyond the screen length
set wrap


" Encoding
set fileformat=unix
set encoding=UTF-8


" COLOR & THEME CONFIG
set termguicolors
""set background=dark
colorscheme desert

" highlight current line
set ruler
set cursorline
:highlight Normal ctermfg=grey ctermbg=darkblue

" Enable mouse support 
set mouse =a

" Show the matching part of paires [], {} and ()
set showmatch

" Text setup: : tabstop: width of character, softtabstop: fine tunes the  amount of white space, textwidth: text wrap width
set tabstop     =4
set softtabstop =4
set textwidth	=100
