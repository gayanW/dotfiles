#!/bin/bash

sudo mkdir -p /etc/X11/xorg.conf.d/

VERSION=$(cat /etc/debian_version)

# Debian 9 "Stretch" is using libinput driver 
sudo cp /usr/share/X11/xorg.conf.d/40-libinput.conf /etc/X11/xorg.conf.d/40-libinput.conf

#sudo cp /usr/share/X11/xorg.conf.d/50-synaptics.conf /etc/X11/xorg.conf.d/50-synaptics.conf

echo "To configure see: https://unix.stackexchange.com/questions/337008/activate-tap-to-click-on-touchpad"
echo "To configure see: https://wiki.debian.org/SynapticsTouchpad#Enable_tapping_on_touchpad"
