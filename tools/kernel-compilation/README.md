#Cross compiling from linux

We could use the provided compiler:

`git clone git://github.com/raspberrypi/tools.git --depth 1`

please remember that we can't use the ssh connection inside so better use the https connection

`https://github.com/raspberrypi/tools.git`

Or, we could use another distro based compiler:

##Ubuntu

`apt-get install gcc-arm-linux-gnueabi make ncurses-dev`

##Arch Linux

`yaourt -S arm-linux-gnueabi-gcc`
