"" Vundle - Vim plugin manager
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Rip-Rip/clang_complete'
"" clang_complete
let g:clang_complete_copen = 1
let g:clang_periodic_quickfix = 1
let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'
set completeopt=menu,longest
Bundle 'majutsushi/tagbar'
Bundle 'ervandew/supertab'


filetype plugin indent on
