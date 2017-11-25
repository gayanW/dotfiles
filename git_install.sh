#!/bin/bash

# git-config
sudo apt-get install git
git config --global user.email "gayan@linuxdeveloper.space"
git config --global user.name "Gayan Weerakutti"
git config --global core.editor "vim"

# Signing commits using GPG
git config --global user.signingkey 626BE6CD
# To set all commits to be signed by defaul
git config --global commit.gpgsign true
