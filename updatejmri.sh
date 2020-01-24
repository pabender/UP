#!/bin/sh

if [! -e updateonce ]
	touch updateonce
	sudo apt-get update
	sudo apt-get fullupgrade
	sudo shutdown -rf now
fi


if [ -e JMRI.4.19.2+R846b684.tgz ]
else
	wget https://github.com/JMRI/JMRI/releases/download/v4.19.2/JMRI.4.19.2+R846b684.tgz
	rm -rf JMRI
	tar xvzf JMRI.4.19.2+R846b684.tgz
fi

