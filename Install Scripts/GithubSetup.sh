#!/bin/bash -eux

sudo add-apt-repository -y ppa:git-core/ppa 
sudo aptitude -y install  git git-extras

git config --global user.name "jacgit18"
git config --global user.email jacdevgoo2020@gmail.com

sudo aptitude -y update && sudo aptitude -y upgrade


cd Documents/
git clone https://github.com/jacgit18/Setup-Testing-Script.git
git clone https://github.com/jacgit18/BashConfigFiles.git




exit 0
