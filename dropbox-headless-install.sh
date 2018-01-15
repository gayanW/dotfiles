#!/bin/bash
set -x

# Python script to control Dropbox from the command line. For easy access, put a symlink to the script anywhere in your PATH.
mkdir -p ~/bin
wget -O ~/bin/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py"
chmod +x ~/bin/dropbox.py

# start Dropbox, if successful, it should show "Starting Dropbox...Done!"
~/bin/dropbox.py start -i

until ~/bin/dropbox.py running; do
	if [ $? -eq 1 ]; then
		break
	fi

	echo "Waiting for Dropbox to start..!"
	sleep 1
done


# exclude everything in your dropbox
~/bin/dropbox.py exclude add *

# except
~/bin/dropbox.py exclude remove ~/Dropbox/cis/

set -x

echo "See http://www.dropboxwiki.com/tips-and-tricks/using-the-official-dropbox-command-line-interface-cli"
