#!/bin/bash
#
# Default script for a training laptop running ubuntu 
#
`sudo ./themes/install_theme.sh themes/ODI-Outline ODI-Outline 2>&1 >/dev/null`
`sudo update-initramfs -u` 
`./wallpapers/install_wallpaper.sh wallpapers/OC_ODI.jpg 2>&1 >/dev/null`
`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 2>&1 >/dev/null`
`sudo dpkg -i google-chrome-stable_current_amd64.deb 2>&1 >/dev/null`
`sudo apt-get -y -f install 2>&1 >/dev/null`
`sudo dpkg -i google-chrome-stable_current_amd64.deb 2>&1 >/dev/null`
`sudo apt-get -y install vim openjdk-7-jre`
`wget https://github.com/OpenRefine/OpenRefine/releases/download/2.5/google-refine-2.5-r2407.tar.gz 2>&1 >/dev/null`
`tar -zxf google-refine-2.5-r2407.tar.gz 2>&1 >/dev/null`
`mv google-refine-2.5 /home/odi`
`chown odi:odi /home/odi/google-refine-2.5`
`chown odi:odi /home/odi/google-refine-2.5/* -R`
`sudo ln -s /home/odi/google-refine-2.5/webapp/modules/core/images/logo-gem-150.png /usr/share/pixmaps/refine.png 2>&1 >/dev/null`
`cp refine.desktop /home/odi/Desktop/`
`cp /usr/share/applications/google-chrome.desktop /home/odi/Desktop/`
`chown odi:odi /home/odi/Desktop/google-chrome.desktop`
`chown odi:odi /home/odi/Desktop/refine.desktop`
`chmod 755 /home/odi/Desktop/refine.desktop`
`chmod 755 /home/odi/Desktop/google-chrome.desktop`
echo "Install Complete"
echo "================"
echo "";
echo "Note that extensions to google chrome will still need to be added manually"
echo "";
exit 0;
