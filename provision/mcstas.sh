#! /bin/bash

# Install McStas# Ub1404 LTS - McStas
#

# First install McStas from repo - gives basic dep packages
#cd /etc/apt/sources.list.d
#sudo wget http://packages.mccode.org/debian/mccode.list
sudo apt-add-repository "deb http://packages.mccode.org/debian stable main"
sudo apt-get update
sudo apt-get install -y --force-yes mcstas-suite

# Next install dep packages for dev McStas
# As McStas developer run the command before build McStas
# sudo dpkg-reconfigure dash [select no]
# only one time is needed

#sudo apt-get install -y texlive-full # probably not needed any more
sudo apt-get install -y bison flex
sudo apt-get install -y python python-chaco python-matplotlib python-yaml
sudo apt-get install -y python-gnuplot
sudo apt-get install -y cmake
sudo apt-get install -y liboscpack-dbg liboscpack-dev liboscpack1 r-cran-coda r-cran-eco r-cran-mcmcpack ubuntu-dev-tools

sudo apt-get install -y python-vtk r-base r-cran-rgl tcl-vtk libvtk5.8 libgl2ps0 libmysqlclient18 libnetcdfc++4 libnetcdfc7 libpq5 mysql-common

sudo apt-get install -y gnuplot
