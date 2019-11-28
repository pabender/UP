#!/bin/bash

sudo mkdir /usr/java
cd /usr/java
sudo tar xf ~/jdk-8u231-linux-arm32-vfp-hflt.tar.gz

sudo update-alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_231/bin/java 2000 
sudo update-alternatives --install /usr/bin/javac javac /usr/java/jdk1.8.0_231/bin/javac 2000

java -version ; javac -version
