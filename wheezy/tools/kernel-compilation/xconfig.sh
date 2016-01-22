#!/bin/bash

KERNEL=kernel
make ARCH=arm CROSS_COMPILE=$CCPREFIX xconfig
