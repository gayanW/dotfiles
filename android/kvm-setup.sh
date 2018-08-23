#!/bin/bash

# https://wiki.debian.org/KVM

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system

sudo adduser $USER libvirt
sudo adduser $USER libvirt-qemu
