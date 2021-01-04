#!/bin/bash -eux

cd 

sudo mkdir GitBare &&  sudo git init --bare $Home/GitBare
alias config='/usr/bin/git --git-dir=$HOME/GitBare/ --work-tree=$HOME' >> $HOME/.bashrc

bash
config config --local status.showUntrackedFiles no


#mkdir normal bare
#cd normal/


#. ~/.bashrc


exit 0
