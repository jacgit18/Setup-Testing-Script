#!/bin/bash -eux

# wget -q https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb


wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

#  downloaded deb
sudo dpkg -i packages-microsoft-prod.deb


sudo add-apt-repository universe
sudo apt-get update
sudo aptitude -y install apt-transport-https
sudo aptitude -y install dotnet-sdk-3.1



# install c #plugin in visual studio code

exit 0
