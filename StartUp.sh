#!/bin/sh

unset http_proxy
unset https_proxy
unset ftp_proxy

# Add an alias ip address to make sure the server can be found.
sudo ip address add 192.168.1.99/24 dev eth0

#check for updates
cd /home/pi
git pull

#start panelpro

cd /home/pi/JMRI
./PanelPro
