#!/bin/bash -eux


sudo apt -y install aptitude
sudo aptitude -y update && sudo aptitude -y upgrade

# sudo aptitude install softname- the minus removes program
# sudo aptitude install softname_ underscore purges app
# sudo aptitude safe-upgrade #won't purge unused files
# sudo aptitude full-upgrade #will purge unused files or packages

exit 0
