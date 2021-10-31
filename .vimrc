"use vim settings instead of vi
set nocompatible

set number relativenumber
set tabstop=2

filetype plugin on
syntax on

autocmd FileType tex inoremap ;l {\latintext{}}<Esc>1hi
autocmd FileType tex inoremap ;b {\textbf{}}<Esc>1hi
autocmd FileType tex inoremap ;i {\textit{}}<Esc>1hi
autocmd FileType tex inoremap ;u {\underline{}}<Esc>1hi

"autocmd BufWritePost *.c !gcc % && .//a.out
