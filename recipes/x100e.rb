#
# Cookbook:: d-base
# Recipe:: x100e
#
# Copyright:: 2017, The Authors, All Rights Reserved.

packages = %w(i3 feh conky-all dmenu i3status zram-config epiphany glances 
              terminator)

package packages

include_recipe "d-base::default"

include_recipe "n1nj4-users::home"

# x100e too slow for minecraft - removed
# include_recipe 'minecraft-installer-ubuntu'
