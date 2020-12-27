#!/bin/bash -eux

cd /media

var param;

sudo mkdir $param
sudo chown jac:jac $param

sudo blkid
sudo nano /etc/fstab

# EX
# UUID="1224c329-8a13-4d57-a87a-b6124e0dc9db"  /media/$param     ext4  defaults  0 0

sudo mount -a

sudo aptitude -y update && sudo aptitude -y upgrade


exit 0
