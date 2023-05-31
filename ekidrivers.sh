#!/bin/bash
echo"Starting Ekimia drivers Update"
dir_ekimia="ubuntupostinstall-master"

echo "# Getting git archive"

wget https://github.com/EkimiaSAS/ubuntupostinstall/archive/master.zip -O ekimiadrivers-master.zip 
unzip -o ekimiadrivers-master.zip 
cd $dir_ekimia 
bash run.22.04.sh
