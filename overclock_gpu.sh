#!/bin/bash

#to enable
#sudo echo 'GRUB_CMDLINE_LINUX="nomodeset"' >> /etc/default/grub
#sudo update-grub
#sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration

export DISPLAY=:0
sudo service lightdm start
#GPU0 GTX1070
nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=125'
nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=800'
#nvidia-settings -a '[gpu:0]/GPUFanControlState=1'
#nvidia-settings -a '[fan:0]/GPUTargetFanSpeed=60'

#GPU1 GTX1070
nvidia-settings -a '[gpu:1]/GPUGraphicsClockOffset[3]=125'
nvidia-settings -a '[gpu:1]/GPUMemoryTransferRateOffset[3]=800'
#nvidia-settings -a '[gpu:1]/GPUFanControlState=1'
#nvidia-settings -a '[fan:1]/GPUTargetFanSpeed=60'

#GPU2 GTX1070
nvidia-settings -a '[gpu:2]/GPUGraphicsClockOffset[3]=125'
nvidia-settings -a '[gpu:2]/GPUMemoryTransferRateOffset[3]=800'
#nvidia-settings -a '[gpu:2]/GPUFanControlState=1'
#nvidia-settings -a '[fan:2]/GPUTargetFanSpeed=60'

#GPU3 GTX1070
nvidia-settings -a '[gpu:3]/GPUGraphicsClockOffset[3]=125'
nvidia-settings -a '[gpu:3]/GPUMemoryTransferRateOffset[3]=800'
#nvidia-settings -a '[gpu:1]/GPUFanControlState=1'
#nvidia-settings -a '[fan:1]/GPUTargetFanSpeed=60'




nvidia-settings -q all | grep clock

sudo service ligthdm stop
