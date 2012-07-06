source ~/.vim/bundles.vim


set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set shiftwidth=4                " auto-indent amount
set softtabstop=4               " a tab is four spaces
set tabstop=4                   " a tab is four spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
set shiftround                  " when at 3 spaces, and I hit > ... go to 4, not 5

" Style
set ruler                       " show current positions along the bottom
set number                      " show line numbers
set autoindent                  " auto indent
set showmatch                   " show matching brackets
set colorcolumn=80

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Misc
set spell                       " spell checking on
set textwidth=72                " insert a newline after 72 characters


" Bundles
nmap <silent> <F2> :TagbarToggle<CR>
nmap <silent> <F3> :NERDTreeToggle<CR>
nmap <silent> <F4> :BuffergatorToggle<CR>

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %


" use comma as <Leader> key instead of backslash
let mapleader=","

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
colorscheme Tomorrow-Night-Bright

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
