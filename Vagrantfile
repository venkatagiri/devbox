# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_check_update = false

  config.vm.hostname = "devbox"
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "private_network", ip: "192.168.13.37"

  config.vm.synced_folder "../worldcal", "/home/vagrant/www/worldcal",
    owner: "vagrant",
    group: "www-data",
    mount_options: ["dmode=775", "fmode=664"]

  config.vm.provision :shell, path: "bootstrap.sh"
end
