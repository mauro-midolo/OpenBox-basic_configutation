#!/bin/sh

#install basic application
sudo apt-get install openbox obmenu obconf xinit terminator conky unzip

#Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
