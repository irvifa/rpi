#!/bin/bash
# run as root

cp ../../conf/dhcpd-conf/dhcpd.conf /etc/dhcp/
cp ../../conf/dhcpd-conf/isc-dhcp-server /etc/default/
cp ../../conf/hostapd-conf/hostapd.conf /etc/hostapd/
cp ../../conf/hostapd-conf/sysctl.conf /etc/
./ip_forwarding.sh
./ip_tables.sh
./save_iptables.sh
cp ../../conf/dhcpd-conf/interfaces /etc/network/

