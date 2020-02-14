#!/bin/sh

#install basic application
sudo apt-get install -y openbox obmenu obconf xinit \
	terminator conky unzip nautilus gcc make tint2 \
	network-manager-gnome chromium-browser
	
#install Nvidia Driver
wget http://it.download.nvidia.com/XFree86/Linux-x86_64/340.108/NVIDIA-Linux-x86_64-340.108.run
chmod +x NVIDIA-Linux-x86_64-340.108.run
sudo nano ./NVIDIA-Linux-x86_64-340.108.run
rm NVIDIA-Linux-x86_64-340.108.run

#Configure tint2
mkdir -p ~/.config/openbox/
cp ./tint2rc ~/.config/tint2/tint2rc
echo "tint2 &" >> ~/.config/openbox/autostart

#Configure asus function key
sudo sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=\"splash quiet\"/GRUB_CMDLINE_LINUX_DEFAULT\=\"splash quiet acpi_osi\=\"/g" /etc/default/grub
sudo update-grub
