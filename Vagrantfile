# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Assign a friendly name to this host VM
  config.vm.hostname = "vagrant-docker"

  #Vm Box used is jessie64 8 reason being that debian is stable
  config.vm.box = "debian/jessie64"

  #Configure the host: part to be any port you want default is 42009
  config.vm.network "forwarded_port", guest: 80, host: 42009

  #Configure the ip: part to be any available private IP you want default is 192.168.77.7
  config.vm.network "private_network", ip: "192.168.77.7"

  #NFS should be installed in your system before vagrant up to work properly
  #the app/ directory is rsynced to /var/www for use by haproxy
  config.vm.synced_folder "app/", "/vagrant/app", nfs:true

  #Docker configuration
  config.vm.provision "docker" do |d|

    #Pull mongo image
    d.pull_images "mongo"

    #Then run it in detached mode to act as a docker service view docker documentation for details
    d.run "mongo",
      args: "-d"
    
    #Pull nginx container
    d.pull_images "nginx"

   #Then run it in detached mode
   #The ports should be the same as the "host:" part in "forwared_port" option
   #see config.vm.network "forwarded_port", guest: 80, host: 42009
   d.run "nginx",
      args: "-d -v /vagrant/app:/var/www -v /var/nginx/configs:/etc/nginx/ -p 42009:42009 --link mongo:mongo"

  end

  config.vm.provision :shell, path: "bootstrap.sh"

end
