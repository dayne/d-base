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
  version '1.2.22'
  action :install
  not_if "/opt/chefdk/bin/chef --version | grep #{version}"
end

include_recipe 'virtualbox'

node.default['vagrant']['version'] = '1.9.1'
include_recipe 'vagrant'

vagrant_plugin 'vagrant-winrm'

hab_install 'install habitat'

#TODO: packer

node.default['terraform']['version'] = '0.8.5'
include_recipe 'terraform'
