#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt-get install ddclient

# generate ddclient.conf using debconf 
# sudo dpkg-reconfigure ddclient

# use the config file instead
# not neccessary if dpkg-reconfigure is being used
if [[ $* == -m ]]; then
	# generate ddclient.conf at runtime
	read -sp 'Enter your OpenDNS password: ' opendns_password
	conf=$(cat ddclient.conf | sed -e "s/opendns_password/$opendns_password/")

	# write to /etc/ddclient.conf
	sudo mv -v /etc/ddclient.conf /etc/ddclient.conf.old 2> /dev/null
	echo "$conf" | sudo tee /etc/ddclient.conf > /dev/null
	
	sudo systemctl enable ddclient
fi

echo
sudo cat /etc/ddclient.conf

read -p "Do you want to test settings in browser (y/n)? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
	x-www-browser https://www.opendns.com/welcome/ http://www.internetbadguys.com/ https://dashboard.opendns.com/
fi

