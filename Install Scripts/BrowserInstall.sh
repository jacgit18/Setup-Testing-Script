#!/bin/bash -eux

sudo apt -y install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo aptitude -y update
sudo apt -y install brave-browser

sudo apt install gdebi-core wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb


wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository -y 'deb https://repo.vivaldi.com/archive/deb/ stable main'  
#sudo aptitude -y update && sudo aptitude -y install vivaldi-stable
sudo apt -y update && sudo apt -y install vivaldi-stable

google-chrome
vivaldi https://chrome.google.com/webstore/detail/bitwarden-free-password-m/nngceckbapebfimnlniiiahkandclblb?hl=en

sudo aptitude -y update && sudo aptitude -y upgrade


exit 0
