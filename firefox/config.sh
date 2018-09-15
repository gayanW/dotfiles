#!/bin/bash

set +x

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

# find default Firefox profile directory 
cd ~/.mozilla/firefox/
if [[ $(grep '\[Profile[^0]\]' profiles.ini) ]]
then PROFPATH=$(grep -E '^\[Profile|^Path|^Default' profiles.ini | grep -1 '^Default=1' | grep '^Path' | cut -c6-)
else PROFPATH=$(grep 'Path=' profiles.ini | sed 's/^Path=//')
fi

# create chrome directory and copy userChrome.css to there
mkdir -p $PROFPATH/chrome
cp $BASE/userChrome.css $PROFPATH/chrome

set -x
