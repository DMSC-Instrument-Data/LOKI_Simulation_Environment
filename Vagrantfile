# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Ubuntu 16.04
  config.vm.box = "bento/ubuntu-16.04"


  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--graphicscontroller", "vboxvga"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--vram", "32"]
    vb.customize ["modifyvm", :id, "--hwvirtex", "on"]
  end

  # Install ubuntu-desktop and virtualbox additions and all the rest
  # Take one provision file at the time.
  # Do the loop:
  # vagrant up --provision 
  # Check install packages
  # vagrant halt
  # comment in the appropriate lines

  # 1.
  config.vm.provision "shell", path: "provision/bootstrap.sh"
  # 2.
  config.vm.provision "shell", path: "provision/mcstas.sh"
  # 3. - Is probaly installed by Mantid Dev? NeXus 4.3.2 is install
  config.vm.provision "shell", path: "provision/libnexus0.sh"   
  
  #copy Instructions for running mcstas
  config.vm.provision "file", source: "./Instructions/ReadMe.pdf", destination: "/home/vagrant/Desktop/ReadMe.pdf"
  #copy McStas manuals
  config.vm.provision "file", source: "./Instructions/Manuals/", destination: "/home/vagrant/Desktop/"
  #copy LOKI Files
  config.vm.provision "file", source: "./LOKI/", destination: "/home/vagrant/Desktop/"
  
  config.vm.provision "shell", 
    inline: "patch -p 3 -f </home/vagrant/Desktop/LOKI/loki-master-model.instr.patch"
end
