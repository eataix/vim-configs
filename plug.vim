call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'majutsushi/tagbar'

Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
let g:go_fmt_command = "goimports"
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python2'

Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-sensible'

Plug 'chriskempson/base16-vim'
let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme base16-solarized
Plug 'spolu/dwm.vim'

Plug 'wting/rust.vim'

call plug#end()

