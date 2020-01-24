#!/bin/sh

#check for updates
cd /home/pi
#just in case there are local changes, stash them.
git stash
git pull

#update jmri
cd /home/pi
./updatejmri.sh

# update java
#cd /home/pi
#./updatejava.sh

