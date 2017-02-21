# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-16.04"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "C:\\Projects", "/code"

  config.vm.provision :shell, :path => "provision.sh"

  config.vm.network "forwarded_port",
    guest: 8080, host: 8088
  config.vm.network "forwarded_port",
    guest: 3000, host: 8888
  config.vm.network "forwarded_port",
    guest: 8000, host: 80
end
