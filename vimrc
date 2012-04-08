source ~/.vim/bundles.vim

"" Generic Settings
filetype plugin indent on
set nocompatible
syntax enable
set encoding=utf-8
set showcmd

set nowrap
set tabstop=8 shiftwidth=8
set expandtab
set backspace=indent,eol,start

set ruler
set number
set autoindent
set visualbell

set colorcolumn=80

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

"" Keys

" Bundles
nmap <silent> <F2> :TagbarToggle<CR>
nmap <silent> <F3> :NERDTreeToggle<CR>
nmap <silent> <F4> :BuffergatorToggle<CR>

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %

" Buffer Control
nmap <silent> ,. :bnext<CR>
nmap <silent> ,m :bprev<CR>

" Tab Control
nmap <silent> ;' :tabnext<CR>
nmap <silent> ;l :tabprev<CR>


" Easy split navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"" Misc
set laststatus=2        " Required by Powerline.
set cursorline          " Highlight the current line.
set hidden              " Allow hidden buffers.
set spell               " Spell checking on

"" Python - PEP8
set softtabstop=8
set shiftround
set textwidth=79        " Newlines are inserted after 79 characters

"" Eya Candy
set t_Co=256
set background=dark
colorscheme solarized

""" Trailing Spaces
""" Reference: https://github.com/sorin-ionescu/dot-files/blob/master/vimrc

set list                " Shows invisible characters
set listchars=tab:▸\ ,trail:.

function! StripTrailingWhitespace()
    if !&binary && &modifiable && &filetype != 'diff'
        let l:winview = winsaveview()
        %s/\s\+$//e
        let @/=''
        call winrestview(l:winview)
    endif
endfunction

au BufWritePre,FileWritePre,FileAppendPre,FilterWritePre *
            \call StripTrailingWhitespace()

""" Tags
set tags+=/usr/include/tags
