node.default['chef_client']['init_style'] = 'systemd'

steam_app 'default' do
    action :install
end

packages = %w(build-essential chromium-browser tilda zsh zsh-antigen
              vim mumble awscli)
package packages

#include_recipe 'packages::default'
include_recipe 'atom'

atom_apm 'atom-terminal'
atom_apm 'zen'
atom_apm 'vim-mode-plus'

chef_dk 'default' do
  global_shell_init true
  version '1.2.20'
  action :install
  not_if "/opt/chefdk/bin/chef --version | grep #{version}"
end

include_recipe 'minecraft-installer-ubuntu'

node.default['terraform']['version'] = '0.8.5'
include_recipe 'terraform'

include_recipe 'virtualbox'

node.default['vagrant']['version'] = '1.9.1'
include_recipe 'vagrant'

hab_install 'install habitat'
