VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "bento/ubuntu-18.04"
  config.vm.synced_folder "D:/LoggedAudio", "/var/LoggedAudio"
  config.vm.provider :virtualbox do |vbox|
    vbox.customize ["modifyvm", :id, "--memory", 1024]
  end

  config.vm.provision :shell, :path => "init.sh"

  config.vm.hostname = "vagrant-custodian"
  config.vm.network "private_network", ip: "192.168.50.201"
end
