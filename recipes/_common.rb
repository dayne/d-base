include_recipe 'chef-client::config'
include_recipe 'chef-client::service'
include_recipe 'openssh::default'
include_recipe 'chef-sugar::default'
include_recipe 'apt::default'

# fix bash for everbody except centos 7
unless centos? && (node['platform_version'].to_f >= 7)
  include_recipe 'bash-CVE-2014-7169'
  include_recipe 'bash-CVE-2014-6271'
end

apt_update 'system' do
  action :periodic
  frequency 86400
end if debian?

include_recipe 'packages'

replace_or_add 'xkboptions = nocaps' do
  path '/etc/default/keyboard'
  pattern 'XKBOPTIONS'
  line 'XKBOPTIONS=ctrl:nocaps'
end

packages = [ 'smartmontools', 'xfsprogs', 'mdadm', 'gdisk', 'curl', 'tree', 'tmux', 'git', 'htop' ]
packages.each do |p|
  package p
end
