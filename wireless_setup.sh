#!/bin/bash

sudo apt-get install wireless-tools
sudo apt-get install wpasupplicant

echo
echo "To connect to a wlan see: https://wiki.debian.org/WiFi/HowToUse#wpa_supplicant"

# GUI
# To start wicd run $ wicd -n
#sudo apt-get install wicd

# Useful commands
# iup wlan0
# wpa_cli terminate
