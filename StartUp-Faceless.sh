#!/bin/bash
unset https_proxy
unset http_proxy
unset ftp_proxy

# Add an alias ip address to make sure the server can be found.
sudo ip address add 192.168.2.99/24 dev eth0

#check for updates
cd /home/pi
git pull

#start jmri faceless 

cd /home/pi/JMRI
./JmriFaceless -p /home/pi/.jmri/RealHardware.jmri
