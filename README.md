# LOKI Simulation Environment
This repository contains a [Vagrant](https://www.vagrantup.com) script and associated files which generate a **Ubuntu 16.04 virtual machine** with mcstas preinstalled. The LOKI instrument and geometry files are placed into a folder on the ubuntu desktop `/home/Desktop/LOKI`. Instructions on how to run the simulation and make modifications can be found in `/home/Desktop/Instructions/ReadMe.md`. These files are stored in this repository and are automatically shared between the host computer and the VM when Vagrant is used to mount the VM. However, these files are copied to the VM so that it can be redeployed with the files available.

## Requirements
- Latest version of Hashicorp Vagrant. [Download Here](https://www.vagrantup.com/downloads.html)
- Latest version of Oracle VirtualBox. [Download Here](https://www.virtualbox.org/wiki/Downloads)

**N.B. This repo was set-up using vagrant 1.9.1 and virtualbox 5.1.14**

## Instructions
- Install vagrant and virtualbox and checkout this repo
- Launch a terminal and navigate to the folder which contains the `VagrantFile`
- run the command `vagrant up --provision-with shell,file`

Vagrant will attempt to download and mount the bare bones version of ubuntu 16.04. You may need to log in before [provisioning](https://www.vagrantup.com/docs/cli/provision.html) starts. Afterwards, the ubuntu desktop and other related dependencies will be downloaded and updated (provisioned) to the VM. Please wait until the entire process is complete before attempting to use the VM.
