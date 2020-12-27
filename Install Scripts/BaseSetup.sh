#!/bin/bash -eux

sudo aptitude -y install gparted
sudo aptitude -y install asciinema # Terminal Recorder
sudo aptitude -y install tldr # tldr is a cleaner man pg
sudo aptitude -y install shotwell # image viewer larn to use or find new
sudo aptitude -y install steam
sudo aptitude -y install stacer 
sudo aptitude -y install timeshift
sudo aptitude -y install obs-studio
sudo aptitude -y install muon
sudo aptitude -y install ubuntu-restricted-extras
sudo aptitude -y install unetbootin
sudo aptitude -y install snapd





#sudo aptitude -y install ice 
vivaldi https://launchpad.net/~peppermintos/+archive/ubuntu/ice-dev/+packages
sudo aptitude -y install qemu-kvm
sudo aptitude -y install qemu virt-manager ebtables

sudo adduser jac kvm && sudo chown jac /dev/kvm

sudo aptitude -y install xscreensaver
sudo aptitude -y install nemo


gnome-session-properties 
# Nemo-Files
# nemo %U

#XScreenSaver
#xscreensaver -nosplash

# xdg-mime - command line tool for querying information about 
# file type handling and adding descriptions for new file types

xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# GSettings is a high-level API for application settings, front end for
# dconf . gsettings. The gsettings command-line tool is used to view
# and change user settings.

gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true


sudo aptitude -y update && sudo aptitude -y upgrade


exit 0
