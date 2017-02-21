#
# Cookbook:: d-base
# Recipe:: x100e
#
# Copyright:: 2017, The Authors, All Rights Reserved.

packages = %w( chromium-browser )

package packages

include_recipe "d-base::default"

include_recipe 'minecraft-installer-ubuntu'
