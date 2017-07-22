#!/bin/bash

sudo mkdir /etc/X11/xorg.conf.d/
sudo cp /usr/share/X11/xorg.conf.d/50-synaptics.conf /etc/X11/xorg.conf.d/50-synaptics.conf
echo "To configure see: https://unix.stackexchange.com/questions/337008/activate-tap-to-click-on-touchpad"
