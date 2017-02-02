node.default['chef_client']['init_style'] = 'systemd'

apt_update 'system' do
  action :periodic
  frequency 86400
end if debian?

include_recipe 'steam'
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

=begin
# stupid dependancies needed
remote_file '/tmp/slack-desktop-2.4.2-amd64.deb' do
  source 'https://downloads.slack-edge.com/linux_releases/slack-desktop-2.4.2-amd64.deb'
  checksum 'f6c81686eaf4bcc73b0b889d69fa6028efdc86b6a28949594b2f5f0d5a2fc4b1'
  owner 'root'
  group 'root'
  mode 0644
end

package %w(indicator-application libgnome-keyring0 libgnome-keyring-common gir1.2-gnomekeyring-1.0 libappindicator1 )

dpkg_package 'slack-desktop' do
  source '/tmp/slack-desktop-2.4.2-amd64.deb'
  only_if { File.exists? '/tmp/slack-desktop-2.4.2-amd64.deb' }
  action :install
end

# sigh, ark doesn't do .gz .. it does .tar.gz
ark 'vnc-viewer' do
  url 'https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.0.1-Linux-x64.gz'
  version '6.0.1'
  checksum 'dec8973b1cf793d622441919ca1bc6fd1e2fe42f60208626b699d1936ec6eec0'
  action :install
end

=end
