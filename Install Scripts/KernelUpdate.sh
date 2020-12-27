#!/bin/bash -eux


# Old kernel util retry and compare to new
# uname -rs
# git clone https://github.com/usbkey9/uktools && cd uktools
# make
# uname -rs


uname -rs
wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
sudo install ubuntu-mainline-kernel.sh /usr/local/bin/
ubuntu-mainline-kernel.sh -i
uname -rs



exit 1
























