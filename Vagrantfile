# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/focal64"

  config.vm.provider :virtualbox do |p|
    p.gui = false
    p.memory = 2048
  end

  config.ssh.forward_agent = true

  config.vm.synced_folder "/home/sfalkho/Documents/github", "/coding_sync/github",
    owner: "vagrant",
    group: "vagrant",
    mount_options: ["dmode=775,fmode=664"]

  config.vm.synced_folder "/home/sfalkho/.credentials", "/home/vagrant/.credentials",
    owner: "vagrant",
    group: "vagrant"

  # Misc configs
  config.vm.provision :file, :source => "~/.ssh", :destination => "/home/vagrant/.ssh"
  config.vm.provision :file, :source => "~/.gitconfig", :destination => "/home/vagrant/.gitconfig"
  config.vm.provision :file, :source => "~/.vimrc", :destination => "/home/vagrant/.vimrc"

  # https://stackoverflow.com/a/8636711/128977
  config.vm.provision :shell, :inline => "echo 'Defaults env_keep += \"DEBIAN_FRONTEND\"' | sudo EDITOR='tee -a' visudo"

  config.vm.provision :shell, :path => "install-apt.sh"

end
