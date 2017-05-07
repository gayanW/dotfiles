#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt-get install fonts-inconsolata

# .Xresources
mv -v ~/.xinitrc ~/.xinitrc.old 2> /dev/null
ln -sf $BASE/xinitrc  ~/.xinitrc

# .Xresources
mv -v ~/.Xresources ~/.Xresources.old 2> /dev/null
ln -sf $BASE/Xresources ~/.Xresources
