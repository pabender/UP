#!/bin/sh

#curl https://www.dataplicity.com/fz6048no.py | sudo python
sudo ln -s /usr/lib/systemd/system/vncserver-x11-serviced.service /etc/systemd/system/multi-user.target.wants/vncserver-x11-serviced.service

cd /home/pi/JMRI
./PanelPro
#./cats.csh
