#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
. /etc/X11/Xsession

# added by gayanw
# update x resources db
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources 
