#
# Cookbook:: d-base
# Recipe:: x100e
#
# Copyright:: 2017, The Authors, All Rights Reserved.


include_recipe 'users'

packages = %w( chromium-browser )

package packages

# TODO find a bit better way of doing this.
# need to give 'users' on specific machines easy sudo access and all
# the groups that make using ubuntu laptop easy -- without polluting
# databags and recipes with silly logic like this
users_manage "julie" do
  action [ :create ]
  only_if { not vagrant? }
end

include_recipe "d-base::default"

include_recipe 'minecraft-installer-ubuntu'

remote_file '/usr/share/icons/minecraft.svg' do
  source 'http://images.wikia.com/yogbox/images/d/dd/Minecraft_Block.svg'
  owner 'root'
  group 'root'
  mode 0644
  action :create
end
