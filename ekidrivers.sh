#!/bin/bash
import distro

echo"Starting Ekimia drivers Update"
dir_ekimia="ubuntupostinstall-master"

echo "# Getting git archive"

wget https://github.com/EkimiaSAS/ubuntupostinstall/archive/master.zip -O ekimiadrivers-master.zip 
unzip -o ekimiadrivers-master.zip 
cd $dir_ekimia 
if distro.codename()=='jammy' and distro.id()=='ubuntu': 
  print('Installation pour Ubuntu 22')
  bash run.22.04.sh 
elif distro.codename()=='focal' and distro.id()=='ubuntu':
  print('Installation pour Ubuntu 20')
  bash run.20.04.sh 
elif distro.codename()=='bionic':
  print('Installation pour Ubuntu 18')
  bash run.18.04.sh
elif distro.codename()=='jammy' and distro.id()=='kubuntu':
  print('Installation pour Kubuntu 22')
  bash run.kde22.04.sh 
elif distro.codename()=='focal' and distro.id()=='kubuntu':
  print('Installation pour Kubuntu 20')
  bash run.kde20.04.sh
elif distro.codename()=='vanessa':
  print('Installation pour Mint 21')
  bash run.mint21.sh
