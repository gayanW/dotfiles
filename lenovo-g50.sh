#!/bin/bash

# Firmware installer for LENOVO-G50-70 Debian

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

# Binary firmware for Intel Wireless cards
sudo apt-get install firmware-iwlwifi

# Binary firmware for Realtek wired and wireless network adapters
sudo apt-get install firmware-realtek
