#!/bin/bash

set -x

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

echo "Setting snap refresh.timer to last Friday of the month"
sudo snap set system refresh.timer=fri5


echo "Pause the refresh process when NetworkManager detects a metered connection"
sudo snap set system refresh.metered=hold
