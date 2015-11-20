#!/bin/bash

sudo cp blacklist.conf /etc/modprobe.d/
sudo update-initramfs -u
sudo reboot
