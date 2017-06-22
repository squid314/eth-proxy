#!/bin/bash


#sudo echo 'GRUB_CMDLINE_LINUX="nomodeset"' >> /etc/default/grub
#sudo update-grub
#sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration

export DISPLAY=:0
sudo service lightdm start
#GTX1070
nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=150'
nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=1000'
#nvidia-settings -a '[gpu:0]/GPUFanControlState=1'
#nvidia-settings -a '[fan:0]/GPUTargetFanSpeed=60'

nvidia-settings -q all | grep clock

sudo service ligthdm stop
#nvidia-settings -a '[gpu:1]/GPUGraphicsMemoryOffset[3]=100'
#nvidia-settings -a '[gpu:1]/GPUMemoryTransferRateOffset[3]=500'
#nvidia-settings -a '[gpu:1]/GPUFanControlState=1'
#nvidia-settings -a '[fan:1]/GPUTargetFanSpeed=98'
