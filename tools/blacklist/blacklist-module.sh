#!/bin/bash

cp ../../conf/blacklist/alsa-base-blacklist.conf /etc/modprobe.d/
cp ../../conf/blacklist/evdev-blacklist.conf /etc/modprobe.d/
cp ../../conf/blacklist/joydev-blacklist.conf /etc/modprobe.d/
depmod -ae
update-initramfs -u
reboot
