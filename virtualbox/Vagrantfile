# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|


  ######################################
  ######Useful configs #################
  ######################################
  #config.vm.box       = "treehouse-rails4"
  #config.vm.box_url   = "http://vm.teamtreehouse.com/treehouse-rails4.box"
  #config.ssh.username = "treehouse"
  ####### End Useful configs ############
  
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "bash_rails.sh"
  config.vm.network "forwarded_port", guest: 3030, host: 3030
  config.vm.synced_folder "src/", "/home/vagrant/src"
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.

end
