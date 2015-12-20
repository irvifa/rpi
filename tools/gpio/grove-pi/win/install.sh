#!/bin/bash

# Please run as root, I'm using python 2.7
# Add dependency
echo " "
echo "Installing dependency . . ."
echo "================================================"
apt-get install -y python-pip git libi2c-dev python-serial i2c-tools python-smbus arduino minicom python-dev
apt-get install -y python-rpi.gpio 
pip install -U RPi.GPIO

#Adding in /etc/modules
echo " "
echo "Adding I2C-dev and SPI-dev in /etc/modules . . ."
echo "================================================"
if grep -q "i2c-dev" /etc/modules; then
        echo "I2C-dev already there"
else
        echo i2c-dev >> /etc/modules
        echo "I2C-dev added"
fi
if grep -q "i2c-bcm2708" /etc/modules; then
        echo "i2c-bcm2708 already there"
else
        echo i2c-bcm2708 >> /etc/modules
        echo "i2c-bcm2708 added"
fi
if grep -q "spi-dev" /etc/modules; then
        echo "spi-dev already there"
else
        echo spi-dev >> /etc/modules
        echo "spi-dev added"
fi


cd wiringPi
./build
echo "wiringPi installed"

echo " "
echo "Making I2C changes in /boot/config.txt . . ."
echo "================================================"
 
echo dtparam=i2c1=on >> /boot/config.txt
echo dtparam=i2c_arm=on >> /boot/config.txt

sudo adduser pi i2c
chmod +x GrovePi/Software/Scratch/GrovePi_Scratch_Scripts/*.sh

sudo dpkg -i avrdude_5.10-4_armhf.deb
sudo chmod 4755 /usr/bin/avrdude

echo " "
echo "Making changes to arduino"
chmod +x setup.sh
sudo ./setup.sh

echo " "
echo "Install smbus for python"
sudo apt-get install python-smbus

echo " "
echo "Making the lib global"
sudo cp GrovePi/Script/grove.pth /usr/lib/python2.7/dist-packages/grove.pth

sudo reboot
