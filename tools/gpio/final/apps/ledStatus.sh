#!/bin/bash

echo $$ > pidStatus.out
gpio mode 11 out
gpio mode 10 out
gpio mode 9 out
gpio mode 8 out
gpio mode 7 out

while true; do
	a=$(curl "http://mahasiswa.cs.ui.ac.id/~saufi.rahman/sysprogweb/level.txt") 

	if [ "$a" -ge "100" ]; then
		gpio write 11 1
                gpio write 10 1
                gpio write 9 1
                gpio write 8 1
                gpio write 7 1
	elif [ "$a" -ge "80" ]; then
		gpio write 11 0
                gpio write 10 1
		gpio write 9 1
		gpio write 8 1
	        gpio write 7 1
	elif [ "$a" -ge "60" ]; then
		gpio write 11 0
                gpio write 10 0
		gpio write 9 1
                gpio write 8 1
		gpio write 7 1
	elif [ "$a" -ge "40" ]; then
		gpio write 11 0
                gpio write 10 0
                gpio write 9 0
                gpio write 8 1
                gpio write 7 1
        elif [ "$a" -ge "20" ]; then
		gpio write 11 0
                gpio write 10 0
                gpio write 9 0
                gpio write 8 0
                gpio write 7 1
	elif [ "$a" -lt "20" ]; then
		gpio write 11 0
		gpio write 10 0
		gpio write 9 0
		gpio write 8 0
		gpio write 7 0
	fi
done
