#Cross compiling from linux

We could use the provided compiler:

` git clone https://github.com/raspberrypi/tools`

include `/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin` to your env variable

` export PATH=$HOME/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin:$PATH` (For x86)

` export PATH=$HOME/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin:$PATH` (For x86_x64)

please remember that we can't use the ssh connection inside so better use the https connection

we're using 3.18 branch in the [Github] 
(https://github.com/raspberrypi/linux), just pick the branch.

Or, we could use another distro based compiler:

##Ubuntu

`apt-get install gcc-arm-linux-gnueabi make ncurses-dev`

##Arch Linux

`yaourt -S arm-linux-gnueabi-gcc`


#Build Sources

##RPI 1

```
$ cd linux
$ KERNEL=kernel
$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcmrpi_defconfig
```

##RPI 2

```
$ cd linux
$ KERNEL=kernel7
$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2709_defconfig
```

##Finally for both of it
```
$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs
```

##For custom usage 
```
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
```
