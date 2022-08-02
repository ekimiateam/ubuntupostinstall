#!/bin/bash
echo "instaling old python"
sudo apt install python2.7 -y

echo "# Start Install for Kubuntu 22.04 "
python2.7 ubuntu-14.04-postinstall.py -c kubuntu-22.04.cfg
echo "Finished"
