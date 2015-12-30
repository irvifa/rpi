#!/bin/bash

gpio mode 11 out
gpio mode 10 out
gpio mode 9 out
gpio mode 8 out
gpio mode 7 out
a = $(cat pidStatus.out)

while true; do
	a=$(curl "http://mahasiswa.cs.ui.ac.id/~saufi.rahman/sysprogweb/status.json" | tail -c 2 | head -c 1) 
	if [ "$a" == "1" ]; then
		./nyala.sh
		exit
	fi
        elif [ "$a" == "0" ]; then
               gpio write 11 0
               gpio write 10 0
               gpio write 9 0
               gpio write 8 0
               gpio write 7 0
               kill -9 $a
        fi
done
