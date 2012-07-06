"" Vundle - Vim plugin manager
filetype plugin off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" Tags
Bundle 'tagbar'
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
Bundle 'vim-powerline'
" Required by snipmate
Bundle 'vim-addon-mw-utils'
Bundle 'tlib_vim'
Bundle 'vim-snipmate'
Bundle 'snipmate-snippets'
" End of snipmate
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-tomorrow-theme'
Bundle 'tpope/vim-fugitive'
Bundle 'c.vim'
Bundle 'clang_complete'
Bundle 'ack.vim'
Bundle 'ctrlp.vim'
let g:ctrlp_buftag_ctags_bin = '/usr/local/bin/ctags'
Bundle 'nerdtree'
Bundle 'supertab'
Bundle 'vim-buffergator'
" Required by ghcmod
Bundle 'vimproc'
Bundle 'ghcmod-vim'
Bundle 'haskell.vim'
" End of Haskell
" Bundle 'neocomplcache'
" Bundle 'neocomplcache-clang_complete'
Bundle 'neco-ghc'
"" End of Vundle

set completeopt =menu,menuone,longest
set pumheight =15
let g:SuperTabDefaultCompletionType = "context"
let g:clang_complete_auto = 0
let g:clang_complete_copen = 1


set rtp+=$GOROOT/misc/vim
