# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos/7"
  config.vm.host_name = 'vagrant.localdomain'

  # config.vm.provider "virtualbox" do |vm|
  #   vm.customize ['modifyvm', :id, '--cpus', '4']
  #   vm.customize ['modifyvm', :id, '--memory', '3072']
  #   vm.customize ['modifyvm', :id, '--chipset', 'ich9']
  #   vm.customize ['modifyvm', :id, '--nictype1', 'virtio']
  #   vm.customize ['storageattach', :id, '--storagectl', 'SATA Controller',
  #     '--port', '0', '--nonrotational', 'on']
  # end

  config.vm.synced_folder "files", "/etc/puppet/files"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
    puppet.module_path    = "modules"
    puppet.options        << "--fileserverconfig=/vagrant/files/fileserver.conf"
    puppet.options        << "--hiera_config=/vagrant/hieradata/vagrant/hiera.yaml"
    puppet.options        << "--show_diff"
    # puppet.options        << "--verbose --debug"
  end
end
