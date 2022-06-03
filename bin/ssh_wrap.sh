#!/bin/bash
#
#cat ${HOME}/.ssh/id_rsa.pub | ssh ${1} 'if [ ! -d ${HOME}/.ssh ]; then mkdir ${HOME}/.ssh; echo "Directory ${HOME}/.ssh created on ${HOSTNAME}."; else echo "Directory ${HOME}/.ssh exists on ${HOSTNAME}."; fi; if [ ! -f ${HOME}/.ssh/authorized_keys ]; then cat > ${HOME}/.ssh/authorized_keys; echo "File ${HOME}/.ssh/authorized_keys created on ${HOSTNAME}."; else cat >> ${HOME}/.ssh/authorized_keys; echo "File ${HOME}/.ssh/authorized_keys updated on ${HOSTNAME}."; sed -i "$!N; /^\(.*\)\n\1$/!P; D" ${HOME}/.ssh/authorized_keys; echo "Duplicates removed on ${HOSTNAME}."; fi;'

#cat ~/.ssh/id_rsa.pub | ssh "${1}" ' [[ ! -d ~/.ssh ]] && mkdir ~/ssh && echo "Direcory ~/ssh created on ${HOSTNAME}." || echo "Directory ~/.ssh exist on ${HOSTNAME}." && cat >> ~/.ssh/authorized_keys && echo "File ~/.ssh/authorized_keys updated on ${HOSTNAME}." && sed -i "$!N; /^\(.*\)\n\1$/!P; D" ~/.ssh/authorized_keys && echo "possible duplicates removed on ${HOSTNAME)." '
ssh-copy-id ${1}
ssh "${1}" ' [[ -d ~/.dotfiles ]] && rm -rf ~/.dotfiles || [[ `command -v git` ]] && git clone git@github.com:r0w3r/.dotfiles.git && sh .dotfiles/install.sh || wget https://github.com/r0w3r/.dotfiles/archive/refs/heads/main.zip && unzip main.zip &&  mv .dotfiles-main .dotfiles && rm -f main.zip && sh .dotfiles/install.sh '
#ssh "${1}" ' [[ `command -v git` ]] || wget --no-check-certificate https://github.com/r0w3r/.dotfiles.git && [[ -d ~/.dotfiles ]] && git -C pull .dotfiles || git clone git@github.com:r0w3r/.dotfiles.git'
ssh "${1}" '[[ -d ~/.vim ]] && rm -rf ~/.vim || [[ `command -v git` ]] && git clone git@github.com:r0w3r/.vim.git && git clone git@git@github.com:r0w3r/.vim || wget https://github.com/r0w3r/.vim/archive/refs/heads/main.zip && unzip main.zip && mv .vim-main .vim && rm -f main.zip &&'
#ssh "${1}" ' [[ `command -v git` ]] || wget --no-check-certificate https://github.com/r0w3r/.vim.git && [[ -d ~/.vim ]] && git -C pull .vim || git clone git@github.com:r0w3r/.vim.git'
ssh "${1}" 
#EOF
