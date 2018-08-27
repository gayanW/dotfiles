#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt install pulseaudio-module-bluetooth
pactl load-module module-bluetooth-discover

sudo apt-get install blueman

echo ""
echo "If it refused to switch profile to a2dp_sink"
echo "See: https://wiki.debian.org/BluetoothUser/a2dp#Refused_to_switch_profile_to_a2dp_sink:_Not_connected"
