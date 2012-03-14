"" Vundle - Vim plugin manager
filetype plugin off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tagbar'
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
Bundle 'vim-powerline'
Bundle 'vim-addon-mw-utils'
Bundle 'tlib_vim'
Bundle 'vim-snipmate'
Bundle 'snipmate-snippets'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'c.vim'
Bundle 'solarized'
Bundle 'ack.vim'
Bundle 'ctrlp.vim'
let g:ctrlp_buftag_ctags_bin = '/usr/local/bin/ctags'
Bundle 'nerdtree'
Bundle 'supertab'
Bundle 'vim-buffergator'
Bundle 'clang_complete'
"" End of Vundle
