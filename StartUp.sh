#!/bin/sh

unset http_proxy
unset https_proxy
unset ftp_proxy

# Add an alias ip address to make sure the server can be found.
sudo ip address add 192.168.1.99/24 dev eth0

#get cats
cd /home/pi
wget http://cats4ctc.wikidot.com/local--files/main:downloads/release2043.zip
unzip release2043.zip
cp release/* JMRI
chmod +x JMRI/cats.csh

# update java
#cd /home/pi
#./updatejava.sh

#check for updates
cd /home/pi
git pull

#start panelpro

cd /home/pi/JMRI
#./PanelPro
./cats.csh
