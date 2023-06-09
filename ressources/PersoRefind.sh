#wget https://raw.githubusercontent.com/ekimiateam/ubuntupostinstall/master/ressources/PAPIRUS-V3.0.0-REFIND-THEME-256PX-96PX-2160P.zip
unzip PAPIRUS-V3.0.0-REFIND-THEME-256PX-96PX-2160P.zip
sudo mkdir -p /boot/efi/EFI/refind/themes/ 
sudo cp -R PAPIRUS_V3.0.0_REFIND-THEME_256PX-96PX_2160P /boot/efi/EFI/refind/themes/
echo "include themes/PAPIRUS_V3.0.0_REFIND-THEME_256PX-96PX_2160P/theme_banner-default-papirus.conf" | sudo tee -a /boot/efi/EFI/refind/refind.conf
sudo cp ekimia.conf /boot/efi/EFI/refind/
echo "include ekimia.conf" | sudo tee -a /boot/efi/EFI/refind/refind.conf
