#Another Misc

* run as root.
	- `su` or `sudo su` and then enter the default password 
* use `chmod +x proxy.sh` and then `./proxy.sh` to set proxy when using lan connection
* use `chmod +x base.sh` and then `./base.sh`.
* use `dpkg -l > out.out` to view installed packages.
* use `lsmod | less` to see loaded module.
* use `modinfo` to know more info of a module

read [raspberry/tools](https://github.com/raspberrypi/tools/issues) for 
more info

source for kernel available in 
[there](https://github.com/raspberrypi/linux) please navigate to the 
branch to search kernel source that we're using now.

currently using grouve pi to handle precision.

##backup
lsblk 
dd if=/dev/mmcblk0 of=/home/[user]/raspi.img

##restore
dd if=/home/[user]/raspi.img of=/dev/mmcblk0