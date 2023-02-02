#!/bin/bash

#Check and create bin dir in home dir.
echo -e "Checking and creating ~/bin \n"
[[ ! -d ~/bin ]] && mkdir ~/bin && echo "~/bin has been created" || echo "~/bin exist"

#Checking and creating symbolic link for ssh_wrap.ssh in ~/bin
echo -e "Checking for ssh_wrap.sh\n"
[[ ! -L ~/bin/ssh_wrap ]] && ln -s ~/.dotfiles/bin/ssh_wrap.sh ~/bin/ && echo "Symlink to wraper created"

#Checking and creating symbolic links for dotfiles in ~/.
[[ ! -L ~/.bash.btb ]] && rm ~/.bash.btb && ln -s ~/.dotfiles/.bash.btb ~/ && echo "Symlink created." || echo ".bash.btb symlink exist"
[[ ! -L ~/.inputrc ]] && rm ~/.inputrc && ln -s ~/.dotfiles/.inputrc ~/ && echo "Symlink created." || echo ".inputrc symlink exist"
[[ ! -L ~/.screenrc ]] && rm ~/.screenrc && ln -s ~/.dotfiles/.screenrc ~/ && echo "Symlink created." || echo ".screenrc symlink exist"
[[ ! -L ~/.bash_profile ]] && rm ~/.bash_profile && ln -s ~/.dotfiles/.bash_profile ~/ && echo "Symlink created." || echo "symlink exist"
[[ ! -L ~/.bashrc ]] && rm ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/ && echo "Symlink created." || echo ".bashrc symlink exist"

#Checking and creating .bash.d directory
[[ ! -d ~/.bashrc.d ]] && mkdir ~/.bashrc.d || echo -e "Files exist." 

#srut access
[[ ! -d ~/.srut ]] && mkdir ~/.srut && ln -s ~/.dotfiles/.bash.btb ~/.srut && ln -s ~/.dotfiles/.bashrc ~/.srut &&  ln -s ~/.dotfiles/.bash_profile ~/.srut &&  ln -s ~/.dotfiles/.inputrc ~/.srut && ln -s ~/.dotfiles/.screenrc ~/.srut && ln -s ~/.vim ~/.srut/

#starship install and config.
[[ ! -d ~/.config ]] && mkdir ~/.config && ln -s ~/.dotfiles/starship.toml ~/.config || ln -s ~/.dotfiles/starship.toml ~/.config
#wget https://starship.rs/install.sh && sh install.sh && rm install.sh
