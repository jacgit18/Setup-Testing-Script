#!/bin/bash -eux

sudo snap install snap-store
sudo snap install lsd
sudo snap install youtube-dl

sudo snap install --classic powershell
# To set Powershell as default shell:
#  Check if the path of Powershell is in /etc/shells.
#  If not, add that. For Snap installation it is /snap/bin/pwsh 
# and for packages installed via APT, it is /usr/bin/pwsh.

# Run chsh and enter password. Enter the path of Powershell Re-login or 
# reboot.

#  Find Snap Package:                                                                      
#  snap find *packagename*

# Install Snap Package :                                                                 
#  sudo snap install *packagename*

#  See what Snaps are Installed:                                                    
#   snap list

# Check History:                                                                                
# snap changes

# Upgrade snap package:                                                               
#  sudo snap refresh *packagename*

#  Downgrade Snap Package:                                                          
#  sudo snap revert *packagename*

#  Remove Snap Package:                                                                
#  sudo snap remove *packagename*


# Change Snap Channel (Stable/Candidate/Beta/Edge)            
# sudo snap refresh *packagename* --channel=beta or stable


exit 0
