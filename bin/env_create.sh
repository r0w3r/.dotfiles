#!/bin/bash

tar -xf env_file.tar
echo "[[ -f ~/.bash.btb ]] && . ~/.bash.btb" >> ~/.bashrc
mkdir .vim
mkdir .vimrc
mkdir .srut
cd .srut
ln -s ${HOME}/.bash.btb
ln -s ${HOME}/.bashrc
ln -s ${HOME}/.inputrc
ln -s ${HOME}/.profile
ln -s ${HOME}/.vim
ln -s ${HOME}/.vimrc
cd ${HOME}
rm -- ${0}
