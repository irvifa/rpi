#!/bin/bash

while true; do
	a=$(curl "http://mahasiswa.cs.ui.ac.id/~saufi.rahman/sysprogweb/status.json" | tail -c 2 | head -c 1) 
	if [ "$a" == "1" ]; then
		./ledStatus.sh
	elif [ "$a" == "0" ]; then
		./mati.sh
		exit
	fi
done
