#!/bin/bash -eux

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:team-xbmc/ppa

# just this part for debian
sudo apt-get update
sudo apt-get install kodi


sudo apt-get update
sudo apt-get remove kodi*
sudo apt-get purge kodi*

# Then remove the settings folder to remove all settings and library data. This will not delete any videos or music, but just the settings and library data itself:

rm -r ~/.kodi/

exit 0
