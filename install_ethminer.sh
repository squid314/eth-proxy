#!/bin/sh
#tested on xubunt 14.04 and 16.04, lubuntu 16.04

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo sed 's/jessie/vivid/' -i /etc/apt/sources.list.d/ethereum-ethereum-*.list

sudo apt-get update
sudo apt-get install -y openssh-server byobu p7zip-full htop build-essential git python-twisted vim
sudo apt-get install -y ethereum ethminer

#sudo apt-get upgrade -y 

#git clone https://github.com/c2h2/eth-proxy.git


exit 0

#b4 mining, need to install cuda, to enable cuda mining.
#get cuda
wget https://   #cuda_8.0.61_375.26_linux.run #from nvidia website
chmod a+x cuda_8.0.61_375.26_linux.run

# install NVIDIA-Linux-x86_64-381.22.run
#if you on 1080ti or later

sudo vim /etc/modprobe.d/blacklist-nouveau.conf
#add lines:

blacklist nouveau
options nouveau modeset=0

#exit
sudo update-initramfs -u
sudo reboot

#reboot and 
sudo service lightdm stop
sudo ./cuda_8.0.61_375.26_linux.run
