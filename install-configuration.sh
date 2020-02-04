#!/bin/sh

#install basic application
sudo apt-get install -y openbox obmenu obconf xinit \
	terminator conky unzip nautilus gcc make tint2 \
	wicd

#Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

#install Nvidia Driver
wget http://it.download.nvidia.com/XFree86/Linux-x86_64/340.108/NVIDIA-Linux-x86_64-340.108.run
chmod +x NVIDIA-Linux-x86_64-340.108.run
sudo nano ./NVIDIA-Linux-x86_64-340.108.run
rm NVIDIA-Linux-x86_64-340.108.run

#Configure tint2
cp ./tint2rc ~/.config/tint2/tint2rc
echo "tint2 &" >> ~/.config/openbox/autostart
