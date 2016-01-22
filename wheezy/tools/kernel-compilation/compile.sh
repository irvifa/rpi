#!/bin/bash

make ARCH=arm CROSS_COMPILE=$CCPREFIX zImage modules dtbs
