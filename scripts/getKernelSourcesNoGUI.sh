#!/bin/bash
apt-add-repository universe
apt-get update
apt-get install pkg-config -y
cd /usr/src
mv kernel kernel-cti
mv ~/kernel_src.tbz2 .
sudo tar -xvf kernel_src.tbz2
# Space is tight; get rid of the compressed kernel source
cd kernel/kernel-4.9
# Go get the default config file; this becomes the new system configuration
zcat /proc/config.gz > .config
