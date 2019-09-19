#!/bin/sh

# Add an alias ip address to make sure the server can be found.
sudo ip address add 192.168.2.99/24 dev eth0

#start panelpro

cd JMRI
./PanelPro
