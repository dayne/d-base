#
# Cookbook:: d-base
# Recipe:: _i3
#
# Copyright:: 2017, The Authors, All Rights Reserved.

packages = %w(i3 feh terminator conky)
package packages

# how could I wrap this with a thing like
# node['workstation_users']
# followed by check to see if they are on systemd
# and have a 'wm' = 'i3' flag set on their user

if File.directory?('/home/dayne')

directory('/home/dayne/.config/i3') do
  owner 'dayne'
  group 'dayne'
  mode 0755
  recursive true
end

file('/home/dayne/.config/i3/config')
  source 'i3-config'
  owner 'dayne'
  group 'dayne'
end
