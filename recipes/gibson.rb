node.default['chef_client']['init_style'] = 'systemd'

steam_app 'default' do
    action :install
end

node.default['packages-cookbook'] = [
  'mplayer',
  'git-core',
  'build-essential',
  'tmux',
  'chromium-browser'
#  'node'
#  'nodejs'
#  'python-dev'
#  'python-pip'
#  'bison'
]

node.default['packages-cookbook'].each do |p|
  package(p)
end

#include_recipe 'packages::default'

# 
include_recipe 'atom'

atom_apm 'atom-terminal'
atom_apm 'zen'
