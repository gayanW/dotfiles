#!/bin/bash

# java commands to update
declare -a arr=("java" "javac" "jdb" "javaws" "jar" "jdeps")

if [ -z "$1" ]; then
	echo "No argument supplied"
	echo "Usage: ./update-alternatives-java /path/to/jdk"
	exit 0
fi

JDK_HOME=${1%/}

if [ -f "$JDK_HOME/bin/javac" ]; then
	echo "Using JDK: $JDK_HOME"
else
	echo "The provided path to JDK seems to be invalid"
	exit 0
fi

## loop through commands arr
for i in "${arr[@]}"
do
	read -p "Do you want to update $i (y/n)? " -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		sudo update-alternatives --install /usr/bin/$i $i $JDK_HOME/bin/$i 1
		sudo update-alternatives --set $i $JDK_HOME/bin/$i
	fi
done
