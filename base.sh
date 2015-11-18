#!/bin/bash
# fresh install rpi wheezy

sudo cp sources.list /etc/apt/sources.list
sudo apt-get install -y nmap curl elinks isc-dhcp-server hostapd
