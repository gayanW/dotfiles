#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt-get install xinit
sudo apt-get install x11-xserver-utils

# .Xresources
mv -v ~/.xinitrc ~/.xinitrc.old 2> /dev/null
ln -sf $BASE/xinitrc  ~/.xinitrc

# .Xresources
mv -v ~/.Xresources ~/.Xresources.old 2> /dev/null
ln -sf $BASE/Xresources ~/.Xresources
sudo apt-get install fonts-inconsolata
