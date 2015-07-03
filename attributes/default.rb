override['chef_client']['init_style'] = 'init'

default['packages'] = {
  "smartmontools" => 'install',
  "xfsprogs"      => 'install',
  "mdadm"         => 'install',
  "gdisk"         => 'install',
  "curl"          => 'install',
  "tree"          => 'install',
  "tmux"          => 'install'
}
