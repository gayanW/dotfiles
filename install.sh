#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt-get install fonts-inconsolata

# .Xresources
mv -v ~/.Xresources ~/.Xresources.old 2> /dev/null
ln -sf $BASE/Xresources ~/.Xresources
