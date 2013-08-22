#!/bin/bash

if [ ! $1 ]; then 
	echo "No wallpaper specified";
	exit 1;
fi
CWD=`pwd`
FILE=$CWD/$1
if [ ! -f "$FILE" ]; then
	echo "Wallpaper $FILE not found";
	exit 1;
fi
RET=`gsettings set org.gnome.desktop.background picture-uri file:///$FILE`
echo "";
echo "Done, you should see the new wallpaper";
echo "";
exit 0;
