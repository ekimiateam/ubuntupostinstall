#!/bin/bash

echo"Starting Ekimia drivers Update"
dir_ekimia="ubuntupostinstall-master"

echo "# Getting git archive"
wget https://github.com/EkimiaSAS/ubuntupostinstall/archive/master.zip -O ekimiadrivers-master.zip 

echo "# Unzip archive"
unzip -o ekimiadrivers-master.zip

cd $dir_ekimia 

echo "instaling old python"
sudo apt install python2.7 -y

echo "# Start Update for Ubuntu 18.04 , please wait up to 20 minutes "
sudo python2.7 ubuntu-14.04-postinstall.py -c ubuntu-18.04-unity-postinstall.cfg

echo "# Cleaning up"
rm -rf $dir_ekimia

echo "# Update finished, please reboot "
