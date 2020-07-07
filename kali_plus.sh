#!/bin/bash
#Update
sudo apt-get update
sudo apt-get upgrade -y
#jump back to home
cd ~
#Make Directory
mkdir tools
#Move to Directory
cd tools

###Install all Tools with Git Here###

##Binwally Pre Reqs
sudo apt-get install libffi-dev libfuzzy-dev python-dev python-pip -y
sudo pip install ssdeep
#Binwally clone
git clone https://github.com/bmaia/binwally

## Wireshark LUA JA3
git clone https://github.com/fullylegit/ja3
git clone https://github.com/kikito/md5.lua
#make directory for LUA
sudo mkdir -p /root/.local/lib/wireshark/plugins/3.2
#copy luas over
sudo cp ja3/ja3.lua /root/.local/lib/wireshark/plugins/3.2
sudo cp md5.lua/md5.lua /root/.local/lib/wireshark/plugins/3.2
#Verify wireshark luas
sudo ls /root/.local/lib/wireshark/plugins/3.2

#Stego toolkit
git clone https://github.com/DominicBreuker/stego-toolkit
#Install Tools
sudo chmod a+x stego-toolkit/install/*.sh && for i in stego-toolkit/install/*.sh;do echo $i && sudo $i;done

## Wine Install	
sudo apt-get install gcc-9-base libasan5 libgcc-9-dev libgcc-8-dev wine32 -y
