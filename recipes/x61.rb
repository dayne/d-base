#
# Cookbook:: d-base
# Recipe:: x100e
#
# Copyright:: 2017, The Authors, All Rights Reserved.

packages = %w( chromium-browser )

package packages

user "julie" do
  action [ :create ]
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
