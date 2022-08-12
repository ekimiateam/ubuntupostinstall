#!/bin/bash
#reload packages first 
sudo apt update
echo "instaling old python"
sudo apt install python2.7 -y

echo "# Start Install for Ubuntu 20.04 "
python2.7 ubuntu-14.04-postinstall.py -c ubuntu-22.04-postinstall.cfg
echo "Finished"
