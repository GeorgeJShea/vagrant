# -*- mode: ruby -*-
# vi: set ft=ruby :

##https://www.youtube.com/watch?v=1GDJ5fLHJNE##
# thanks youtube


Vagrant.configure("2") do |config|

	config.vm.box = "bento/ubuntu-16.04"

	config.vm.provider "virtualbox" do |vb|
		vb.memory = 4096
		vb.cpus = 2
	end


	config.vm.network "forwarded_port", guest: 80, host: 8080
	config.vm.network "private_network", ip: "192.168.33.10"

	config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]

	config.vm.provision "shell", path: "install.sh", privileged: false

end

