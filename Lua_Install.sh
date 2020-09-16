#!/bin/bash

# Make a directory to git from github
mkdir /home/kali/Desktop/wiresharklua

# Move to the directory to save files there
cd /home/kali/Desktop/wiresharklua

# copy ja3 lua
git clone https://github.com/fullylegit/ja3

# copy md5 lua
git clone https://github.com/kikito/md5.lua

# Make directory structure for wireshare (create folder structure if needed) 
# This folder is not there by default
sudo mkdir -p /root/.local/lib/wireshark/plugins/3.2

# Copy Luas over to the plugin location
sudo cp /home/kali/Desktop/wiresharklua/ja3/ja3.lua /root/.local/lib/wireshark/plugins/3.2
sudo cp /home/kali/Desktop/wiresharklua/md5.lua/md5.lua /root/.local/lib/wireshark/plugins/3.2

# Verify the contents of the plugins
sudo ls -al /root/.local/lib/wireshark/plugins/3.2