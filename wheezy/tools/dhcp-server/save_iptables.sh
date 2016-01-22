#!/bin/bash
# please run as root

sh -c "iptables-save > /etc/iptables.ipv4.nat"
