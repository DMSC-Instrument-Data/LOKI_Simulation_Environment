#! /bin/bash

# Install libnexus0 for McStas
# libnexus0 4.3-svn1863 in default Ubuntu 14.04 repo is not working with McStas

wget http://dk.archive.ubuntu.com/ubuntu/pool/universe/n/nexus/libnexus0_4.3.2-svn1919-1_amd64.deb
sudo dpkg -i libnexus0_4.3.2-svn1919-1_amd64.deb

wget http://archive.ubuntu.com/ubuntu/pool/universe/n/nexus/libnexus0-dev_4.3.2-svn1919-1_amd64.deb
sudo dpkg -i libnexus0-dev_4.3.2-svn1919-1_amd64.deb

sudo apt-get install -y -f