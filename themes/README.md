Some themes. 

Install them by linking them to /lib/plymouth/themes/

As root: 

update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/{theme-name}/{theme-name}.plymouth 100

update-alternatives --config default.plymouth

update-initramfs -u
