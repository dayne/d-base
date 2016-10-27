#
# Cookbook Name:: d-base
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe 'd-base::_common'

if node['platform'] == "raspbian"
# include_recipe 'd-base::_pi' # removed in favor of d.pi
end

include_recipe 'system::timezone'
