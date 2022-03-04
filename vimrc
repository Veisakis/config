"use vim settings instead of vi
set nocompatible


"General
syntax enable

set number relativenumber
set tabstop=2


"Split View
set splitbelow splitright

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


"AutoCommands
filetype plugin on

autocmd BufRead,BufNewFile *.c set filetype=c
autocmd BufRead,BufNewFile *.tex set filetype=tex

autocmd FileType tex inoremap ;l {\latintext{}}<Esc>1hi
autocmd FileType tex inoremap ;b {\textbf{}}<Esc>1hi
autocmd FileType tex inoremap ;i {\textit{}}<Esc>1hi
autocmd FileType tex inoremap ;u {\underline{}}<Esc>1hi

autocmd FileType c nnoremap ;c :!gcc % && ./a.out

autocmd BufWritePost *.tex !pdflatex % && biber %:r && pdflatex %
