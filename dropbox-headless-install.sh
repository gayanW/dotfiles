#!/bin/bash

read -p "Do you want to re-download dropbox? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then
	cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
fi

# Python script to control Dropbox from the command line. For easy access, put a symlink to the script anywhere in your PATH.
mkdir -p ~/bin
wget -O ~/bin/dropbox.py "https://www.dropbox.com/download?dl=packages/dropbox.py"
chmod +x ~/bin/dropbox.py

# exclude everything in your dropbox
~/bin/dropbox.py exclude add *

# start Dropbox, if successful, it should show "Starting Dropbox...Done!"
~/bin/dropbox.py start

# run the Dropbox daemon from the newly created .dropbox-dist folder.
# ~/.dropbox-dist/dropboxd

echo "See http://www.dropboxwiki.com/tips-and-tricks/using-the-official-dropbox-command-line-interface-cli"
