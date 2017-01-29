node.default['chef_client']['init_style'] = 'systemd'

steam_app 'default' do
    action :install
end

[
    'build-essential',
    'chromium-browser',
    'tilda',
    'zsh',
    'zsh-antigen',
    'vim',
    'mumble'
    #  'node'
    #  'nodejs'
    #  'python-dev'
    #  'python-pip'
    #  'bison'
]. each do |p|
  package(p)
end

#include_recipe 'packages::default'
include_recipe 'atom'

atom_apm 'atom-terminal'
atom_apm 'zen'
atom_apm 'vim-mode-plus'

chef_dk 'default' do
  global_shell_init true
  version '1.1.16'
  action :install

  #not_if '/opt/chefdk/bin/chef --version | grep 0.19.6'
  #not_if "/opt/chefdk/bin/chef --version | grep #{node['chef_dk']['version']}"
  not_if "/opt/chefdk/bin/chef --version | grep #{version}"
end

include_recipe 'minecraft-installer-ubuntu'

# https://releases.hashicorp.com/terraform/0.8.4/
node['terraform']['version'] = '0.8.5'
# https://releases.hashicorp.com/terraform/0.8.4/terraform_0.8.4_SHA256SUMS
#node['terraform']['checksum'] = '297d35d0b4311445cd87ef032d3dec917bcc7a8b163ead28a4c45d966a2f75cc'
include_recipe 'terraform'
