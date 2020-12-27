#!/bin/bash -eux

sudo aptitude -y install gparted
sudo aptitude -y install clamav clamtk
sudo aptitude -y install asciinema # Terminal Recorder
sudo aptitude -y install xscreensaver

sudo aptitude -y install tldr # tldr is a cleaner man pg
sudo aptitude -y install shotwell # image viewer larn to use or find new
sudo aptitude -y install steam
sudo aptitude -y install stacer 
sudo aptitude -y install timeshift



sudo aptitude -y install nemo


gnome-session-properties 
# Nemo-Files
# nemo %U

# xdg-mime - command line tool for querying information about 
# file type handling and adding descriptions for new file types

xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# GSettings is a high-level API for application settings, front end for
# dconf . gsettings. The gsettings command-line tool is used to view
# and change user settings.

gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true

exit 0
