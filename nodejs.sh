#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs

echo "To compile and install native addons from npm you may also need to install build tools."
read -p "Do you want to install the package, build-essential (y/n)? " -n 1 -r
echo # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt-get install -y build-essential
fi
