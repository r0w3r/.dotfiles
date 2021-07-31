#!/bin/bash

tar -cf tmp/env_file.tar .inputrc .bash.btb .vimrc

szel=${1}
  echo -e "Wysylam na $szel \n"
  scp ${HOME}/bin/env_create.sh $szel:.
  scp ${HOME}/tmp/env_file.tar  $szel:.
  ssh $szel ./env_create.sh






