# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "LongLiveCHIEF/minimal-centos-7"

  config.vm.network "private_network", ip: "10.0.41.41"
  config.vm.hostname = "10.0.41.41"

  config.vm.provider "virtualbox" do |vb|
	vb.linked_clone = true
	vb.cpus = 2
	vb.memory = 2048
  end

  config.vm.provision "shell", 
  path: "provision/scripts/gitlab_install.sh", 
  privileged: true

end
