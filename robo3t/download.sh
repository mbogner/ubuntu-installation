#!/bin/bash
DIRECTORY=robo3t-1.1.1-linux-x86_64-c93c6b0
URL=https://download.robomongo.org/1.1.1/linux/robo3t-1.1.1-linux-x86_64-c93c6b0.tar.gz
FILENAME=robo3t-1.1.1-linux-x86_64-c93c6b0.tar.gz
UNPACK="tar -xf"

. ../download-common

# fix for ubuntu
rm -f */lib/libstdc++*
