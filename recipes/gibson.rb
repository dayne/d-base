# gibson's run list from d-base should just be this recipe.
include_recipe 'd-base::default'

node.default['chef_client']['init_style'] = 'systemd'

packages = %w(build-essential chromium-browser tilda zsh zsh-antigen
              vim mumble awscli giggle gitg weechat unity-tweak-tool
              deluge mplayer tmate nmap)
package packages

include_recipe 'minecraft-installer-ubuntu'

include_recipe 'd-base::chefdk'

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
