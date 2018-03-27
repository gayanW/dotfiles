#!/bin/bash

sudo apt-get purge openjdk-*

# if the latest jdk does not exists
# install from backports
sudo apt-get install openjdk-8-jdk
