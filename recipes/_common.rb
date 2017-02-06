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

include_recipe 'packages'
