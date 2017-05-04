# gibson's run list from d-base should just be this recipe.
include_recipe 'd-base::default'

node.default['chef_client']['init_style'] = 'systemd'

packages = %w(chromium-browser tilda zsh zsh-antigen
              mumble giggle gitg weechat unity-tweak-tool
              deluge mplayer tmate )
packages.push %w( sshfs build-essential vim awscli tmate )  # candidates for moving over to d_devbox (ubuntu only)
packages.push %w( iftop iotop atop nmap )
packages.push %w( inkscape gimp )
packages.push %w( warzone2100 shutter )
package packages

include_recipe 'd-base::_scudcloud'

include_recipe 'minecraft-installer-ubuntu'

include_recipe 'd_devbox'

include_recipe 'd-base::_gitkraken'

include_recipe 'qgis'

include_recipe 'steam'

# gibson special atom plugins
atom_apm 'atom-terminal'
atom_apm 'zen'
atom_apm 'vim-mode-plus'
atom_apm 'atom-beautify'

# docker
docker_installation 'default' do
  action :create
end

docker_service 'default' do
  action [:create, :start]
end

include_recipe 'd-base::_i3'

include_recipe 'd-base::_ruby'

#include_recipe 'glances'

# include_recipe 'nodejs'

apt_repository  'node.js' do
  #uri 'https://deb.nodesource.com/node'
  action :remove 
end

include_recipe 'd-base::_hugo'
