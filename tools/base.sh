#!/bin/bash
# fresh install rpi wheezy

dpkg-reconfigure ntp
cp ../conf/sources.list /etc/apt/sources.list
apt-get upgrade && apt-get update
apt-get install -y nmap curl elinks isc-dhcp-server hostapd iptables
