# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty32"

  config.ssh.forward_agent = true

  config.vm.synced_folder "/coding/python", "/coding_sync/python",
    owner: "vagrant",
    group: "vagrant",
    mount_options: ["dmode=775,fmode=664"]

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.provision :shell, :path => "prep.sh"

  config.vm.provision :shell, :path => "install-apt.sh"

  # Misc configs
  config.vm.provision :file, :source => "~/.gitconfig", :destination => "/home/vagrant/.gitconfig"
  config.vm.provision :file, :source => "~/.vimrc", :destination => "/home/vagrant/.vimrc"

end
