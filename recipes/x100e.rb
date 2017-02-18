#
# Cookbook:: d-base
# Recipe:: x100e
#
# Copyright:: 2017, The Authors, All Rights Reserved.

packages = %w(i3 zram-config epiphany)

package packages

include_recipe "d-base::default"
