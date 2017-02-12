# gibson's run list from d-base should just be this recipe.
include_recipe 'd-base::default'

# include_recipe 'd-base::home'

node.default['chef_client']['init_style'] = 'systemd'

packages = %w(build-essential chromium-browser tilda zsh zsh-antigen
              vim mumble awscli giggle gitg weechat)
package packages

include_recipe 'minecraft-installer-ubuntu'

include_recipe 'd-base::chefdk'

include_recipe 'd-base::_gitkraken'

include_recipe 'qgis'

include_recipe 'steam'
