Tasks are list by priority , end of file ,  the more important.
They can be rearranged

------------ WONTFIX -----------------


--------------------- TODO ----------------------------
*  For kiosk mode your would : 

- Disable popup update windows 

gsettings set com.ubuntu.update-notifier no-show-notifications true


-- For normal mode : 


- Make duckduckgo default search engine in Firefox
   

- some notifications steal focus , this  may be a solution  : 

gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'strict'


* Keyboard backlight control GUI ? 

https://github.com/webketje/tuxedo-backlight-control


* Mime handlers ( done , to verify ) 

- Default open all archive (ZIp tar.xz ) with nautilus AKA "extract here" ( in ~/.config/mimeapps.list ) : easier to send script to client
- .bin files should executed instead of being opened with archiver
- Associate the exe files with wine to opened automagically : sudo cp /usr/share/doc/wine-stable/examples/wine.desktop /usr/share/applications/

* Other modification 


- Consider using an apt-cache proxy during install https://www.tecmint.com/apt-cache-server-in-ubuntu/

- Preinstall a battery run test like GNOME Battery bench tool

- Groupware support : xul-ext-lightning , google mail/calendar in TB  ?

- Enable hibernation (not really possible without swapspace )

- Patch udev rules to include pid/vid for Epson Scanners and patch epson2.conf to declare the same pid/vid

- Install the Main Printers drivers for OOTB functionning including network scanning ( Epson, Canon, Brother)
Maybe use the epson repo for auto install ? http://download.ebz.epson.net/faq/linux/faq_li_00027.html

- add a simple way to control the desktop of users, ondemand (gitso preinstalled but not click n go -> dwservice ) 

- Enable Zswap ?

- Disable the update-apt-xapi bs bug 655831 ( useful anymore ? )

- handle Airplane/Led keyboard control for Clevo models https://github.com/zackboll/clevo-xsm-wmi

- Enable Verr Num when the keyboard has a Num pad like W550SU1

- Automatic setting of gconf settings see system76 driver using a file in /usr/share/glib-2.0/schemas : [org.gnome.desktop.background]
picture-uri = 'file:///usr/share/backgrounds/System76-Fractal_Mountains-by_Kate_Hazen_of_System76.png'



- Make chromium ignore the GPU blacklist

- Enable the videoGPU decoder flag in chromium when Intel/chromium will accept the patch. June 17

- Edit the default prefs in chromium using https://github.com/andreashuber69/os-setup/blob/master/common/reset-browser-preferences

ans put the conf file in skel dir 

- Preinstall UNite gnome3 ext https://extensions.gnome.org/extension/1287/unite/

- Preinstall extensions gnomeshell for chromium https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep 

- modify in dconf " og.gnome/desktop/input-sources/xkb-options " to have the CAPS LOCK behaviour like windows



---------------------- TO BE DONE (Manual) ----------------------------------


- Update GRUB_RECORDFAIL_TIMEOUT=1 so oem-config does not show grub
- enable canonical partner repo
- enable better defaults for updates ( Check every 2 days,download  security auto, show others every 2 weeks )
- Enable sleep on lid close
- Enable Windows menu in the window title bar

- Show the % and time of battery as a default
- Ajust Sleep timeout to 30 min

-- OPTIONAL --
First run 
- Set wallpaper to ekimia one
Second run

---------------------- DONE ----------------------------------

- Put size of launcher to 24

- Update nautilus options to ask to run shell script

- Show app button at top in gnome3 : gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true

- Show battery percentage gsettings set org.gnome.desktop.interface show-battery-percentage true

- Fix WPA "device not ready" when oem-config finish https://bugs.launchpad.net/ubuntu/+source/network-manager/+bug/1576024
- Install TLP project ( to be tested ) -> Now in Xenial Repo ! 
- Need To integrate the systemd service fix ( see system76 solution) to restart networkmanager on wake up to overcome this bug 
https://bugs.launchpad.net/ubuntu/+source/network-manager/+bug/1574347
- Disable Apport
- To add for 16.04 : unity-tweak-tool
- Clean the apt cache
- Remove the Amazon Launcher
- Install thermald
