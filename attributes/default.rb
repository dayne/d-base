# override['chef_client']['init_style'] = 'init'

default['packages-cookbook'] = [
  'smartmontools',
  'xfsprogs',
  'mdadm',
  'gdisk',
  'curl',
  'tree',
  'tmux',
  'git-core',
  'htop'
]

default['system']['timezone'] = 'America/Anchorage'

default['chef_dk']['version'] = '1.2.22'
default['vagrant']['version'] = '1.9.2'
default['terraform']['version'] = '0.8.6'
