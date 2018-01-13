#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt-get install xinit
sudo apt-get install x11-xserver-utils

# .xinitrc (not required)
mv -v ~/.xinitrc ~/.xinitrc.old 2> /dev/null
cp $BASE/xinitrc  ~/.xinitrc

# .Xresources
mv -v ~/.Xresources ~/.Xresources.old 2> /dev/null
cp $BASE/Xresources ~/.Xresources

# xrdb -merge ~/.Xresources

sudo apt-get install fonts-inconsolata
