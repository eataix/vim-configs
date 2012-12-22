#!/usr/bin/env zsh
git clone git@github.com:eataix/vim-configs.git ${HOME}/.vim
ln -s ${HOME}/.vim/vimrc ${HOME}/.vimrc
git clone https://github.com/gmarik/vundle.git ${HOME}/.vim/bundle/vundle
vim +BundleInstall +qall
