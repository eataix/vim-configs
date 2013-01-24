"" Vundle - Vim plugin manager
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" clang_complete
"Bundle 'Rip-Rip/clang_complete'
"let g:clang_complete_copen = 1
"let g:clang_periodic_quickfix = 1
"let g:clang_snippets = 1
"let g:clang_snippets_engine = 'clang_complete'
"set completeopt=menu,longest
Bundle 'majutsushi/tagbar'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
"Bundle 'eataix/ultisnips'
"Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-sensible'
Bundle 'davidhalter/jedi-vim'

"Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'spolu/dwm.vim'

"try
"    set background=dark
"    colorscheme Tomorrow-Night-Bright
"catch /^Vim\%((\a\+)\)\=:E185/
"endtry

nmap <F1> :CtrlPBuffer<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>

filetype plugin indent on
