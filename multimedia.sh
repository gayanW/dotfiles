#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt-get update
sudo apt-get install kodi
sudo apt-get install audacity
sudo apt-get install lightworks
sudo apt-get install -t jessie-backports youtube-dl

echo "Install vokoscreen screen recorder from: "
echo "http://linuxecke.volkoh.de/vokoscreen/vokoscreen-download.html"
