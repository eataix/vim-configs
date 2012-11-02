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
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'tomasr/molokai'
"colorscheme molokai
colorscheme Tomorrow-Night-Bright
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols="fancy"
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
"Bundle 'mileszs/ack.vim'
Bundle 'spolu/dwm.vim'

"Bundle 'myusuf3/numbers.vim'

set background=dark
"let base16colorspace=256
"Bundle 'chriskempson/base16-vim'
"colorscheme base16-solarized
"colorscheme base16-monokai
"let base16colorspace=256
"colorscheme base16-default

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>

filetype plugin indent on
