#!/bin/bash
echo "instaling old python"
sudo apt install python2.7 -y

echo "# Start Update for Ubuntu 18.04 , please wait up to 20 minutes "
python2.7 ubuntu-14.04-postinstall.py -c ubuntu-20.04-unity-postinstall.cfg
echo "Finished"
