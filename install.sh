#!/bin/bash

#Check and create bin dir in home dir.
[[ -d ~/bin ]] && mkidir ~/bin && echo "~/bin has been created" || echo "~/bin exist"

#Checking and creating symbolic link for ssh_wrap.ssh in ~/bin
[[ -L ~/bin/ssh_wrap ]] && ln -s "${PWD}"/bin/ssh_wrap.ssh ~/bin/

#Checking and creating symbolic links for dotfiles in ~/.
[[ ! -L .bash.btb ]] && rm ~/.bash.btb && ln -s .bash.btb ../ || echo "File exist"
[[ ! -L .bash_profile ]] && rm ~/.bash_profile && ln -s .bash_profile ../ || echo "File exist"
[[ ! -L .bashrc ]] && rm ~/.bashrc && ln -s .bashrc ../ || echo "File exist"
[[ ! -L .inputrc ]] && rm ~/.inputrc && ln -s .inputrc ../ || echo "File exist"
[[ ! -L .screenrc ]] && rm ~/.screenrc && ln -s .screenrc ../ || echo "File exist"


