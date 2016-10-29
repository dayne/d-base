node.default['chef_client']['init_style'] = 'systemd'

steam_app 'default' do
    action :install
end
[
  'build-essential',
  'chromium-browser',
#  'node'
#  'nodejs'
#  'python-dev'
#  'python-pip'
#  'bison'
]. each do |p|
  package(p)
end

#include_recipe 'packages::default'

# 
include_recipe 'atom'

atom_apm 'atom-terminal'
atom_apm 'zen'

chef_dk 'default' do
  global_shell_init true
  version '0.18.30'
  action :install

  #not_if '/opt/chefdk/bin/chef --version | grep 0.19.6'
  not_if "/opt/chefdk/bin/chef --version | #{node['chef_dk']['version']}"
end

#%w{ zsh zsh-antigen }.each { |p| package p }


