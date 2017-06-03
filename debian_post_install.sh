#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install xz-utils

# openbox
sudo apt-get install openbox
sudo apt-get install menu # requires for /Debian menu item to work (/etc/xdg/openbox/menu.xml)

sudo apt-get install git
sudo apt-get install vim
sudo apt-get install curl
sudo apt-get install cmake # required for running junegunns install-vim
sudo apt-get install maven
sudo apt-get install at
sudo apt-get install fonts-lklug-sinhala

# ntp
sudo apt-get install ntp
ehco "To setup, enable ntp, see: https://www.server-world.info/en/note?os=Debian_8&p=ntp"

# usb auto mounting
sudo apt-get install usbmount
# recommended read: /etc/usbmount/usbmount.conf
# append "ntfs-3g, fuseblk" to /etc/usbmount/usbmount.conf's variable FILESYSTEMS
# remove the "sync" option. (https://capocasa.net/usb-automount)
# alway use pumount /media/usb to unmount

# https://linux.die.net/man/1/xclip
# http://stackoverflow.com/a/5130969/3647002
sudo apt-get install xclip

# mysql | mariadb
sudo apt-get install mariadb-server

# mpv
sudo apt-get install mpv
