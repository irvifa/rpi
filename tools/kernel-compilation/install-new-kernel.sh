#!/bin/bash

sudo mkdir -p /tmp/mnt/fat32
sudo mkdir -p /tmp/mnt/ext4
sudo mount /dev/mmcblk0p1 /tmp/mnt/fat32/
sudo mount /dev/mmcblk0p2 /tmp/mnt/ext4/
sudo make ARCH=arm CROSS_COMPILE=$CCPREFIX INSTALL_MOD_PATH=/tmp/mnt/ext4 modules_install
sudo cp /tmp/mnt/fat32/$KERNEL.img /tmp/mnt/fat32/$KERNEL-backup.img
sudo scripts/mkknlimg arch/arm/boot/zImage /tmp/mnt/fat32/$KERNEL.img
sudo cp arch/arm/boot/dts/*.dtb /tmp/mnt/fat32/
sudo cp arch/arm/boot/dts/overlays/*.dtb* /tmp/mnt/fat32/overlays/
sudo cp arch/arm/boot/dts/overlays/README /tmp/mnt/fat32/overlays/
sudo umount /tmp/mnt/fat32
sudo umount /tmp/mnt/ext4
