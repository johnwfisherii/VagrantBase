# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise64"
  config.vm.network :forwarded_port, host: 8080, guest: 80

  # requires vagrant-omnibus plugin installed
  # force latest version of chef
  config.omnibus.chef_version = :latest

  config.vm.provision "chef_solo" do |chef|

    chef.cookbooks_path = "chef-config/cookbooks"
    chef.roles_path = "../chef-config/roles"
    chef.data_bags_path = "../chef-config/data_bags"

    chef.add_recipe "apt"
    chef.json = { "apt" => {"compiletime" => true} } 

    chef.add_recipe "nginx"
    chef.add_recipe "postgresql"
  
  end

end
