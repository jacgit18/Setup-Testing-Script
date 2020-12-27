#!/bin/bash -eux

sudo aptitude -y install autoconf-archive gettext valac pkg-config desktop-file-utils appstream-util libappstream-glib-dev libglib2.0-dev gsettings-desktop-schemas-dev gobject-introspection libgirepository1.0-dev libsqlite3-dev libgom-1.0-dev libgstreamer1.0-dev libgtk-3-dev libcanberra-dev libpeas-dev libappindicator3-dev
sudo aptitude -y install xsel # Depency for festival
sudo aptitude -y install curl

sudo aptitude -y install libvirt-bin # other Virtualization stuff
# LC_ALL=C lscpu | grep Virtualization

# sudo systemctl enable libvirtd
# sudo systemctl start libvirtd
# sudo systemctl status libvirtd
# sudo usermod -G libvirt -a jac
# sudo qemu-img convert -f vdi -O qcow2 Ubuntu\ 20.04.vdi /var/lib/libvirt/images/ubuntu-20-04.qcow2

sudo aptitude -y install pulseeffects
sudo aptitude -y install gparted
sudo aptitude -y install asciinema # Terminal Recorder
sudo aptitude -y install tldr # tldr is a cleaner man pg
sudo aptitude -y install shotwell # image viewer larn to use or find new
sudo aptitude -y install steam
sudo aptitude -y install stacer 
sudo aptitude -y install notepadqq


curl https://download.jitsi.org/jitsi-key.gpg.key | sudo sh -c 'gpg --dearmor > /usr/share/keyrings/jitsi-keyring.gpg'
echo 'deb [signed-by=/usr/share/keyrings/jitsi-keyring.gpg] https://download.jitsi.org stable/' | sudo tee /etc/apt/sources.list.d/jitsi-stable.list > /dev/null
sudo aptitude -y update
sudo aptitude -y install jitsi-meet

sudo aptitude -y install kazam 


# sudo aptitude -y install gnome-shell-pomodoro
sudo aptitude -y install tweak 
sudo aptitude -y install timeshift
sudo aptitude -y install vlc
sudo aptitude -y install obs-studio
sudo aptitude -y install muon
sudo aptitude -y install ubuntu-restricted-extras
sudo aptitude -y install unetbootin
sudo aptitude -y install gnome-shell-extensions gnome-menus gir1.2-gmenu-3.0
sudo snap install --classic discord
sudo snap install --classic slack
sudo snap install --classic barrier
sudo snap install --classic audacity 
#sudo aptitude -y install tilda # Dropdown terminal

sudo add-apt-repository ppa:ernstp/mesarc
sudo aptitude update
sudo aptitude install corectrl


sudo aptitude -y install ttf-mscorefonts-installer
sudo aptitude -y install fontforge
wget https://gist.github.com/maxwelleite/10774746/raw/ttf-vista-fonts-installer.sh -q -O - | sudo bash


sudo aptitude -y install snapd
# sudo aptitude -y install xchm
# sudo aptitude -y install gnome-shell-pomodoro

sudo flatpak install flathub org.linux_hardware.hw-probe
sudo -E flatpak run org.linux_hardware.hw-probe -all -upload



# sudo aptitude -y install festival # Text reader
# festival --tts filename

# highlight text
# xsel | festival --tts








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
