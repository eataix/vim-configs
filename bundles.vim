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
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols="fancy"
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
"Bundle 'eataix/ultisnips'

Bundle 'Shougo/vimproc'
Bundle 'eagletmt/ghcmod-vim'

Bundle 'chriskempson/base16-vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'tomasr/molokai'
Bundle 'spolu/dwm.vim'
Bundle 'larssmit/vim-getafe'
Bundle 'w0ng/vim-hybrid'
Bundle 'nanotech/jellybeans.vim'
Bundle 'gregsexton/Muon'
Bundle 'tristen/superman'
colorscheme Tomorrow-Night
"let base16colorspace=256
"colorscheme base16-monokai

set background=dark

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>

filetype plugin indent on
