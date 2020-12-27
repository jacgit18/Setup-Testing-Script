#!/bin/bash -eux


sudo aptitude -y install tlp 
sudo aptitude -y install tlp-rdw
sudo aptitude -y install slimbookbattery
sudo systemctl status tlp
sudo tlp start 
sudo tlp-stat -s 

sudo aptitude -y install powertop #Intel’s open-source PowerTOP utility
sudo powertop --calibrate

#Switch graphics
sudo aptitude -y install gnome-shell-extension-system76-power system76-power
gnome-shell-extension-prefs 
# Now enable the System76 Power extension with the toggle to the right.
sudo system76-power graphics
sudo system76-power graphics nvidia
sudo system76-power graphics intel

sudo aptitude -y update && sudo aptitude -y upgrade

exit 0
