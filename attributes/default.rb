# override['chef_client']['init_style'] = 'init'

default['packages-cookbook'] = [
  'smartmontools',
  'xfsprogs',
  'mdadm',
  'gdisk',
  'curl',
  'tree',
  'tmux',
  'mplayer',
  'git-core',
]

default['system']['timezone'] = 'America/Anchorage'

default['chef_dk']['version'] = '1.2.22'
