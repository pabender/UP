#!/bin/sh

if [ -e JMRI.4.19.2+R846b684.tgz ]
else
	wget https://github.com/JMRI/JMRI/releases/download/v4.19.2/JMRI.4.19.2+R846b684.tgz
	rm -rf JMRI
	tar xvzf JMRI.4.19.2+R846b684.tgz
fi

