#!/bin/bash

while true; do
	currPower=$(curl -sb -H https://chocolate-furry.herokuapp.com/power)
	sleep 1
	echo $currPower > /sys/class/gpio/gpio2/value
done
