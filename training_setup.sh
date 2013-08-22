#!/bin/bash
#
# Default script for a training laptop running ubuntu 
#
`./themes/install_theme.sh themes/ODI-Outline`
`./wallpapers/install_wallpaper.sh wallpapers/OC_ODI.jpg`
`wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`
`dpkg -i https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`
`wget https://github.com/OpenRefine/OpenRefine/releases/download/2.5/google-refine-2.5-r2407.tar.gz`
`tar -zxf google-refine-2.5-r2407.tar.gz`
`mv google-refine-2.5 /home/odi`
`chown odi:odi /home/odi/google-refine-2.5`
`chown odi:odi /home/odi/google-refine-2.5/* -R`
`ln -s /home/odi/google-refine-2.5/webapp/modules/core/images/logo-gem-150.png /usr/share/pixmaps/refine.png`
`cp refine.desktop /home/odi/desktop`
`cp /usr/share/applications/google-chrome.desktop /home/david/Desktop/`
`chown odi:odi /home/odi/Desktop/*.desktop`
`chmod 755 /home/odi/Desktop/*.desktop\
echo "Install Complete"
echo "================"
echo "";
echo "Note that extensions to google chrome will still need to be added manually"
echo "";
exit 0;
