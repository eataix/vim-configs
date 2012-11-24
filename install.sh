#!/usr/bin/env zsh
ln -s ${PWD}/vimrc ${HOME}/.vimrc
git clone https://github.com/gmarik/vundle.git ${HOME}/.vim/bundle/vundle
vim +BundleInstall +qall
