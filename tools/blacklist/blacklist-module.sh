#!/bin/bash

cp ../../conf/alsa-base-blacklist.conf /etc/modprobe.d/
cp ../../conf/evdev-blacklist.conf /etc/modprobe.d/
depmod -ae
update-initramfs -u
reboot
