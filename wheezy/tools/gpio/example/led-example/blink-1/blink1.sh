#!/bin/bash

while true; do
	echo "1" > /sys/class/gpio/gpio3/value;
	sleep 2;
	echo "0" > /sys/class/gpio/gpio3/value;
	sleep 2;
done
