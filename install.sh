#!/bin/bash

#Check and create bin dir in home dir.
echo -e "Checking and creating ~/bin \n"
[[ ! -d ~/bin ]] && mkdir ~/bin && echo "~/bin has been created" || echo "~/bin exist"

#Checking and creating symbolic link for ssh_wrap.ssh in ~/bin
echo -e "Checking for ssh_wrap.sh\n"
[[ ! -L ~/bin/ssh_wrap ]] && ln -s ~/.dotfiles/bin/ssh_wrap.sh ~/bin/ && echo "Symlink to wraper created"

#Checking and creating symbolic links for dotfiles in ~/.
[[ -f ~/.bash.btb ]] && [[ ! -L ~/.bash.btb ]] && rm ~/.bash.btb && ln -s ~/.dotfiles/.bash.btb ~/ || [[ -L ~/.bash.btb ]] && echo ".bash.btb symlink exist" || ln -s ~/.dotfiles/.bash.btb && echo "Symlink created."
[[ -f ~/.bash_profile ]] && [[ ! -L ~/.bash_profile ]] && rm ~/.bash_profile && ln -s ~/.dotfiles/.bash_profile ~/ ||  [[ -L ~/.bash_profile ]] && echo "symlink exist" || ln -s ~/.dotfiles/.bash_profile && echo "Symlink created."
[[ -f ~/.bashrc ]] && [[ ! -L ~/.bashrc ]] && rm ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/ || [[ -L ~/.bashrc ]] && echo ".bashrc symlink exist" || ln -s ~/.dotfiles/.bashrc ~/ && echo "Symlink created."
[[ -f ~/.inputrc ]] && [[ ! -L ~/.inputrc ]] && rm ~/.inputrc && ln -s ~/.dotfiles/.inputrc ~/ ||  [[ -L ~/.inputrc ]] && echo ".inputrc symlink exist" || ln -s ~/.dotfiles/.inputrc ~/ && echo "Symlink created."
[[ -f ~/.screenrc ]] && [[ ! -L ~/.screenrc ]] && rm ~/.screenrc && ln -s ~/.dotfiles/.screenrc ~/ || [[ -L ~/.screenrc ]] && echo ".screenrc symlink exist" || ln -s ~/.dotfiles/.screenrc ~/ && echo "Symlink created."

#Checking and creating .bash.d directory
[[ ! -d ~/.bashrc.d ]] && mkdir ~/.bashrc.d || echo -e "Files exist." 

#srut access
[[ ! -d ~/.srut ]] && mkdir ~/.srut && ln -s ~/.dotfiles/.bash.btb ~/.srut && ln -s ~/.dotfiles/.bashrc ~/.srut &&  ln -s ~/.dotfiles/.bash_profile ~/.srut &&  ln -s ~/.dotfiles/.inputrc ~/.srut && ln -s ~/.dotfiles/.screenrc ~/.srut && ln -s ~/.vim ~/.srut/
