#!/bin/bash

#Check and create bin dir in home dir.
[[ ! -d ~/bin ]] && mkdir ~/bin && echo "~/bin has been created" || echo "~/bin exist"

#Checking and creating symbolic link for ssh_wrap.ssh in ~/bin
[[ ! -L ~/bin/ssh_wrap ]] && ln -s ~/.dotfiles/bin/ssh_wrap.sh ~/bin/ && echo "Symlink to wraper created"

#Checking and creating symbolic links for dotfiles in ~/.
[[ -L .bash.btb ]] && rm ~/.bash.btb && ln -s ~/.dotfiles/.bash.btb ~/ || echo "File exist"
[[ -L .bash_profile ]] && rm ~/.bash_profile && ln -s ~/.dotfiles/.bash_profile ~/ || echo "File exist"
[[ -L .bashrc ]] && rm ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/ || echo "File exist"
[[ -L .inputrc ]] && rm ~/.inputrc && ln -s ~/.dotfiles/.inputrc ~/ || echo "File exist"
[[ -L .screenrc ]] && rm ~/.screenrc && ln -s ~/.dotfiles/.screenrc ~/ || echo "File exist"


