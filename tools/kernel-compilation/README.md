#Cross compiling from linux

We could use the provided compiler:

```
git clone https://github.com/raspberrypi/tools

$ $CCPREFIX=$HOME/winarch/tools/arm-bcm2708/arm-bcm2708-linux-gnueabi/bin/arm-bcm2708-linux-gnueabi-
$ make ARCH=arm CROSS_COMPILE=$CCPREFIX zImage modules dtbs
$ mkdir /tmp/mnt/fat32
$ mkdir /tmp/mnt/ext4
$ sudo mount /dev/mmcblk0p1 /tmp/mnt/fat32
$ sudo mount /dev/mmcblk0p2 /tmp/mnt/ext4
$sudo make ARCH=arm CROSS_COMPILE=$CCPREFIX INSTALL_MOD_PATH=/tmp/mnt/ext4 modules_install
$ sudo cp mnt/fat32/$KERNEL.img /tmp/mnt/fat32/$KERNEL.img.bak
$ sudo scripts/mkknlimg arch/arm/boot/zImage /tmp/mnt/fat32/$KERNEL.img
$ sudo cp arch/arm/boot/dts/*.dtb /tmp/mnt/fat32/
$ sudo cp arch/arm/boot/dts/overlays/*.dtb* /tmp/mnt/fat32/overlays/
$ sudo cp arch/arm/boot/dts/overlays/README /tmp/mnt/fat32/overlays/
$ sudo umount /tmp/mnt/fat32
$ sudo umount /tmp/mnt/ext4
```

please remember that we can't use the ssh connection inside so better use the https connection

(https://github.com/raspberrypi/linux), just pick the branch.

Run rpi-update to get latest kernel. 

Or, we could use another distro based compiler:

##Ubuntu

`apt-get install gcc-arm-linux-gnueabi make ncurses-dev`

##Arch Linux

`yaourt -S arm-linux-gnueabi-gcc`


