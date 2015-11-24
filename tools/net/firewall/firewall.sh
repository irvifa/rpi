#!/bin/bash

iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

echo -n '1' > /proc/sys/net/ipv4/icmp_echo_ignore_broadcast

