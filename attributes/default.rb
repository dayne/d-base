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
