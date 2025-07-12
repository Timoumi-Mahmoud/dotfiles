
""" Calling plugins
call plug#begin()
Plug 'ayu-theme/ayu-vim' 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


" Encoding
set fileformat=unix
set encoding=UTF-8

" Show line number
set relativenumber
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
"set wrap

" __ COLOR & THEME CONFIG
"set termguicolors
"set background=dark
"colorscheme desert

" __ COLOR & THEME CONFIG with ayu
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
" let ayucolor="mirage" 
colorscheme ayu""""""""""

" highlight current line
"set cursorcolumn
set ruler
set cursorline
"" :highlight Normal ctermfg=grey ctermbg=darkblue

" Enable mouse support
set mouse =a

" Show the matching part of paires [], {} and ()
set showmatch

" Text setup: : tabstop: width of character, softtabstop: fine tunes the  amount of white space, textwidth: text wrap width
set tabstop     =4
set softtabstop =4
set textwidth	=150

" Stop auto commenting
set formatoptions-=cro

" Smart search
set ignorecase
set smartcase
set incsearch

" Open Terminal
nnoremap <c-t> <Esc>:term<cr>


" setlocal spell spelllang=en_us
:highlight ColorColumn ctermbg=magenta
:call matchadd('colorColumn', '\%100v', 100)

" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let mapleader=" "
let maplocalleader=" "
let &t_SI= "\e[6 q"
let &t_EI= "\e[2 q"

set autowrite

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

" autocomplite
au filetype go inoremap <buffer>   <c-x><c-o>

" Yaml files : set tabs(ts=2), exxpandtab(et), nu (display line number) a, sw(shiftwidth =2), sts (softtabstop) and cuc (cursorcolum)
set et ts=2 ai sw=2 nu


set visualbell
set t_vb=


" Disable up, down, left, right keys
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" set a leader key
let mapleader = " "

" Explorer
nnoremap <leader>pv :Vex<CR> 

" fzf
nnoremap <C-p> :GFiles<CR> 
nnoremap <leader>pf :Files<CR> 
nnoremap <leader>bf :Buffers<CR> 
nnoremap <leader>cf :Commits<CR> 


" autocomplite (, [, {, <, ', ''
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
" inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" add execution write to a bash script
nnoremap <leader>x :!chmod +x %<CR> 

