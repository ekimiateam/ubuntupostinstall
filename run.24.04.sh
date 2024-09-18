#!/bin/bash
#reload packages first 
sudo apt update
sudo apt upgrade
sudo ubuntu-drivers autoinstall

sudo apt install linux-generic-hwe-24.04
sudo apt install gimp gimp-plugin-registry cheese regionset libdvd-pkg gnome-sound-recorder
sudo apt install nautilus-admin nautilus-image-converter seahorse-nautilus ooo-thumbnailer
sudo apt install htop preload gparted hardinfo xsensors synaptic gdebi mtp-tools dkms thermald net-tools lm-sensors
sudo apt install gnome-tweak-tool dconf-editor
sudo apt install libva-glx2 libva-x11-2 vainfo mesa-va-drivers
sudo apt install intel-media-va-driver-non-free
sudo apt install intel-gpu-tools
sudo apt install vlc vlc-l10n
sudo apt install libreoffice-base libreoffice-sdbc-hsqldb
sudo apt install exfatprogs
sudo apt install cifs-utils samba smbclient
sudo apt install ppa-purge powertop
sudo apt install printer-driver-all-enforce
sudo apt install winbind
sudo apt install gnome-shell-extension-manager gnome-shell-extensions
sudo apt install nextcloud-desktop nautilus-nextcloud
sudo apt install sssd-ad sssd-tools realmd adcli
sudo apt install gnome-software-plugin-flatpak
sudo apt remove gnome-software-plugin-snap

sudo dpkg-reconfigure --frontend=noninteractive libdvd-pkg

sudo apt -y install `check-language-support -l fr`
sudo apt -y install `check-language-support -l en`


gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.shell.extensions.dash-to-dock click-action minimize


sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt remove -y totem* firefox
sudo snap remove firefox snap-store
sudo flatpak install flathub org.mozilla.firefox -y
sudo mkdir -p /etc/skel/.config/dconf/
sudo cp /home/oem/.config/dconf/user /etc/skel/.config/dconf/user
sudo apt-get autoremove -y
sudo apt-get clean


echo "Finished"
