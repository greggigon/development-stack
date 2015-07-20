# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "chef/centos-7.1"

  config.vm.network "private_network", type: "dhcp"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false 
    vb.memory = "2048"
    vb.cpus = 2
  end


  config.vm.provision "shell", path: 'docker.sh' 

end
