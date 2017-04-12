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

node.default['gitkraken']['url'] = \
             'http://n1nj4net-public.s3-website-us-west-2.amazonaws.com/gitkraken-amd64-2.3.3.deb'
           # aws s3 cp gitkraken-amd64-2.3.3.deb s3://n1nj4net-public/ --acl public-read
           # 'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
node.default['gitkraken']['version'] = '2.3.3'
# curl https://release.gitkraken.com/linux/gitkraken-amd64.deb  | sha256sum
node.default['gitkraken']['checksum'] = \
   'a6e235ab1a4c1da755af8218ad819fcac6bc89b1a324aa2c0e430f3805cb1a16'  # v2.3.3


