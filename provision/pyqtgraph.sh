#! /bin/bash

# Install pyqtgraph
sudo pip install pyzmq
sudo pip install mpi4py

wget http://www.pyqtgraph.org/downloads/python-pyqtgraph_0.9.10-1_all.deb
sudo dpkg -i python-pyqtgraph_0.9.10-1_all.deb

