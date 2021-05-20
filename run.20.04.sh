#!/bin/bash
echo "instaling old python"
sudo apt install python3 -y

echo "# Start Install for Ubuntu 20.04 "
python3 ubuntu-14.04-postinstall.py -c ubuntu-20.04-unity-postinstall.cfg
echo "Finished"
