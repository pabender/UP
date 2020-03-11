#!/bin/bash
unset https_proxy
unset http_proxy
unset ftp_proxy

# Add an alias ip address to make sure the server can be found.
sudo ip address add 192.168.1.99/24 dev eth0

cd /home/pi
./update.sh

#start jmri faceless 
cd /home/pi/JMRI
./JmriFaceless -p /home/pi/.jmri/LenzSimulatorAndCMRI.jmri
