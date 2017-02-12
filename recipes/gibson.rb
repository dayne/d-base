node.default['chef_client']['init_style'] = 'systemd'

apt_update 'system' do
  action :periodic
  frequency 86400
end if debian?

include_recipe 'steam'

packages = %w(build-essential chromium-browser tilda zsh zsh-antigen
              vim mumble awscli giggle gitg weechat)

#  kicad

package packages

# include_recipe 'packages::default'

include_recipe 'atom'

atom_apm 'atom-terminal'
atom_apm 'zen'
atom_apm 'vim-mode-plus'
atom_apm 'file-watcher'
atom_apm 'file-icons'

chef_dk 'default' do
  global_shell_init true
  version '1.2.22'
  action :install
  not_if "/opt/chefdk/bin/chef --version | grep #{version}"
end

include_recipe 'minecraft-installer-ubuntu'

node.default['terraform']['version'] = '0.8.5'
include_recipe 'terraform'

include_recipe 'virtualbox'

node.default['vagrant']['version'] = '1.9.1'
include_recipe 'vagrant'
#TODO: vagrant plugin install vagrant-winrm

hab_install 'install habitat'

#TODO: packer

# gitkraken
# https://support.gitkraken.com/release-notes/current

node.default['gitkraken']['url'] = 'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
node.default['gitkraken']['version'] = '2.0.1'
node.default['gitkraken']['checksum'] = '14afeded24a4e0b2737c0d60917c3965f6cccd4b58c1934e9c45b4a65a7ca5ac'

remote_file ('/tmp/gitkraken-amd64.deb') do
  source node.default['gitkraken']['url']
  owner 'root'
  checksum node.default['gitkraken']['checksum']
end

dpkg_package 'gitkraken' do
  only_if { File.exist?('/tmp/gitkraken-amd64.deb')}
  source '/tmp/gitkraken-amd64.deb'
  action [ :install ]
end


include_recipe 'qgis'
