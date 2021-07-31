#!/bin/bash
#
cat ${HOME}/.ssh/id_rsa.pub | ssh ${1} 'if [ ! -d ${HOME}/.ssh ]; then mkdir ${HOME}/.ssh; echo "Directory ${HOME}/.ssh created on ${HOSTNAME}."; else echo "Directory ${HOME}/.ssh exists on ${HOSTNAME}."; fi; if [ ! -f ${HOME}/.ssh/authorized_keys ]; then cat > ${HOME}/.ssh/authorized_keys; echo "File ${HOME}/.ssh/authorized_keys created on ${HOSTNAME}."; else cat >> ${HOME}/.ssh/authorized_keys; echo "File ${HOME}/.ssh/authorized_keys updated on ${HOSTNAME}."; sed -i "$!N; /^\(.*\)\n\1$/!P; D" ${HOME}/.ssh/authorized_keys; echo "Duplicates removed on ${HOSTNAME}."; fi;'
  ssh $1
#cat ~/.ssh/id_rsa.pub | ssh ${1} '[[ ! -d ~/.ssh ]] && mkdir ~/ssh && echo "Direcory ~/ssh created on ${HOSTNAME}." || echo "Directory ~/.ssh exist on ${HOSTNAME}." ; [[ ! -f ~/.ssh/authorized_keys ]] && cat > ~/.ssh/authorized_keys ]] 
~/bin/push_env.sh ${1}
