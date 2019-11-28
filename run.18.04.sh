#!/bin/bash
echo "instaling old python"
sudo apt install python2.7

echo "# Start Update for Ubuntu 18.04 , please wait up to 20 minutes "
sudo python2.7 ubuntu-14.04-postinstall.py -c ubuntu-18.04-unity-postinstall.cfg
echo "Finished"
