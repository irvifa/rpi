#!/bin/bash

sudo su -
counter=1
for [ $counter -le 8 ]; do
	echo $counter > /sys/class/gpio/export
	echo "out" > /sys/class/gpio/gpio$counter/direction
	counter=$((counter+7))
done
