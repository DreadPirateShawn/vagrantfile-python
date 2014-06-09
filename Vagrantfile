# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty32"

  config.ssh.forward_agent = true

  config.vm.synced_folder "/coding/workspace_safe", "/coding/vagrant_workspace_safe",
    owner: "vagrant",
    group: "vagrant",
    mount_options: ["dmode=775,fmode=664"]

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.provision :shell, :path => "prep.sh"

  config.vm.provision :shell, :path => "install-apt.sh"

  # Git
  config.vm.provision :file, :source => "~/.gitconfig", :destination => "/home/vagrant/.gitconfig"

end
