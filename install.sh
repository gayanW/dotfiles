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

sudo apt-get install git

# git-config
git config --global user.email "gayan@linuxdeveloper.space"
git config --global user.name "Gayan Weerakutti"
git config --global core.editor "vim"
