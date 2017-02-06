node.default['chef_client']['init_style'] = 'systemd'

apt_update 'system' do
  action :periodic
  frequency 86400
end if debian?

include_recipe 'steam'

packages = %w(build-essential chromium-browser tilda zsh zsh-antigen
              vim mumble awscli)

#  kicad


package packages

#include_recipe 'packages::default'

include_recipe 'atom'

atom_apm 'atom-terminal'
atom_apm 'zen'
atom_apm 'vim-mode-plus'
atom_apm 'file-watcher'
atom_apm 'file-icons'

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

include_recipe 'qgis'
