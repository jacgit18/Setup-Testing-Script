#!/bin/bash -eux


sudo apt -y install aptitude
sudo aptitude -y update && sudo aptitude -y upgrade

exit 0
