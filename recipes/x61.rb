#
# Cookbook:: d-base
# Recipe:: x100e
#
# Copyright:: 2017, The Authors, All Rights Reserved.

packages = %w( chromium-browser )

package packages

user_manage "julie" do
  action [ :create ]
end

include_recipe "d-base::default"

include_recipe 'minecraft-installer-ubuntu'
