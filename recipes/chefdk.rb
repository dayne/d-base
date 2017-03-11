#
# Cookbook:: d-base
# Recipe:: chefdk
#
# Copyright:: 2017, The Authors, Do what you want - MIT License

include_recipe 'atom'

atom_apm 'file-watcher'
atom_apm 'file-icons'

chef_dk 'default' do
  global_shell_init true
  version node['chef_dk']['version']
  action :install
  not_if "/opt/chefdk/bin/chef --version | grep #{version}"
end

include_recipe 'virtualbox'

include_recipe 'vagrant'
vagrant_plugin 'vagrant-winrm'

hab_install 'install habitat'

include_recipe 'terraform'

include_recipe 'sbp_packer'
