#!/bin/bash

last_update=$(stat -c %Z /var/lib/apt/periodic/update-success-stamp)
time_since_last_update="$[$(date +%s) - $last_update]"

if [ "$time_since_last_update" -ge 600000 ]; then
  sudo apt-get update -qq -y > /dev/null
fi

sudo apt-get install -qq -y figlet git tmux zsh curl wget build-essential xauth > /dev/null

wget https://sourceforge.net/projects/ubuntuzilla/files/mozilla/apt/pool/main/f/firefox-mozilla-build/firefox-mozilla-build_46.0.1-0ubuntu1_amd64.deb
sudo dpkg -i firefox-mozilla-build_46.0.1-0ubuntu1_amd64.deb
sudo apt-get install -qq -y firefox

figlet "Box Box"

sudo chsh -s /bin/zsh vagrant
