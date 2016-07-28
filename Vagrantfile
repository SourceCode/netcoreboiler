# -*- mode: ruby -*-
# vi: set ft=ruby :

# NET Core 1.0 Boilerplate
# Repo: http://github.com/SourceCode/netcoreboiler
# License: MIT

# Configure Vagrant
Vagrant.configure("2") do |config|
  # Include the ubuntu/trusty64 image
  config.vm.box = "ubuntu/trusty64"
  # Run the bootstrap via shell on boot
  config.vm.provision :shell, path: "vagrant/bootstrap.sh"
end