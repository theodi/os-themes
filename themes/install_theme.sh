#!/bin/bash

if [ ! $1 ]; then 
	echo "No directory specified";
	exit 1;
fi
CWD=`pwd`
DIR=$CWD/$1
if [ ! -d "$DIR" ]; then
	echo "Theme dir $DIR not found";
	exit 1;
fi
RET=`ln -s $DIR /lib/plymouth/themes/`
echo $RET;
RET=`update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/$1/$1.plymouth 100`
RET=`update-initramfs -u`
echo "Theme installed, you can check by running the following:";
echo "";
echo "update-alternatives --config default.plymouth";
echo "";
exit 0;
