#!/bin/sh

if [ -e updateonce ]
then
	echo ""
else
	echo "" > updateonce
	sudo apt-get update
	sudo apt-get fullupgrade
	sudo shutdown -rf now
fi


if [ -e JMRI.4.19.2+R846b684.tgz ]
then
	echo ""
else
	wget https://github.com/JMRI/JMRI/releases/download/v4.19.2/JMRI.4.19.2+R846b684.tgz
	rm -rf JMRI
	tar xvzf JMRI.4.19.2+R846b684.tgz

	#get cats
        cd /home/pi
        wget http://cats4ctc.wikidot.com/local--files/main:downloads/release2043.zip
        unzip release2043.zip
        cp release/* JMRI
        chmod +x JMRI/cats.csh
        cd /home/pi
        rm -r release
        rm release2043.zip
fi


