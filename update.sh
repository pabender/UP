#!/bin/sh

#check for updates
cd /home/pi
#just in case there are local changes, stash them.
git stash
git pull

#update jmri
cd /home/pi
./updatejmri.sh

#get cats
cd /home/pi
wget http://cats4ctc.wikidot.com/local--files/main:downloads/release2043.zip
unzip release2043.zip
cp release/* JMRI
chmod +x JMRI/cats.csh
cd /home/pi
rm -r release
rm release2043.zip

# update java
#cd /home/pi
#./updatejava.sh

