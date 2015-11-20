#!/bin/bash

sudo cp ../../conf/blacklist.conf /etc/modprobe.d/
sudo update-initramfs -u
sudo reboot
