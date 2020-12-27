#!/bin/bash -eux

sudo aptitude -y install clamav clamtk
# clamav just scans file systems

# sudo systemctl stop clamav-freshclam.service
# ^stop^start
# sudo freshclam
# sudo systemctl start clamav-freshclam.service

# clamtk is gui version

# clamscan --help
# sudo clamscan -r -i /home/jac/Downloads 

# if anything is blocked in Linux check firewall
sudo aptitude -y update && sudo aptitude -y upgrade



exit 0
