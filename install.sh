#!/bin/bash

#Check and create bin dir in home dir.
[[ ! -d ~/bin ]] && mkdir ~/bin && echo "~/bin has been created" || echo "~/bin exist"

#Checking and creating symbolic link for ssh_wrap.ssh in ~/bin
[[ ! -L ~/bin/ssh_wrap ]] && ln -s ~/.dotfiles/bin/ssh_wrap.sh ~/bin/ && echo "Symlink to wraper created"

#Checking and creating symbolic links for dotfiles in ~/.
[[ -f ~/.bash.btb ]] && [[ ! -L ~/.bash.btb ]] && rm ~/.bash.btb && ln -s ~/.dotfiles/.bash.btb ~/ || [[ -L ~/.bash.btb ]] && echo "File exist" || ln -s ~/.dotfiles/.bash.btb && echo "File exist."
[[ -f ~/.bash_profile ]] && [[ ! -L ~/.bash_profile ]] && rm ~/.bash_profile && ln -s ~/.dotfiles/.bash_profile ~/ ||  [[ -L ~/.bash_profile ]] && echo "File exist" || ln -s ~/.dotfiles/.bash_profile && echo "File exist."
[[ -f ~/.bashrc ]] && [[ ! -L ~/.bashrc ]] && rm ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/ ||  && [[ -L ~/.bashrc ]] && echo "File exist" || ln -s ~/.dotfiles/.bashrc ~/ && echo "File exist."
[[ -f ~/.inputrc ]] && [[ ! -L ~/.inputrc ]] && rm ~/.inputrc && ln -s ~/.dotfiles/.inputrc ~/ ||  [[ -L ~/.inputrc ]] && echo "File exist" || ln -s ~/.dotfiles/.inputrc ~/ && echo "File exist."
[[ -f ~/.screenrc ]] && [[ ! -L ~/.screenrc ]] && rm ~/.screenrc && ln -s ~/.dotfiles/.screenrc ~/ || [[ -L ~/.screenrc ]] && echo "File exist" || ln -s ~/.dotfiles/.screenrc ~/ && echo "File exist."

#Checking and creating .bash.d directory
[[ ! -d ~/.bash.d ]] && mkdir ~/.bash.d || echo -e "Files exist." 
