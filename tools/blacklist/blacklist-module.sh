#!/bin/bash

cp ../../conf/blacklist.conf /etc/modprobe.d/
cat blacklist.conf >> alsa-base-blacklist.conf
depmod -ae
update-initramfs -u
reboot
