#
# Cookbook Name:: d-base
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#include_recipe "chef-client"

include_recipe 'apt::default'

include_recipe 'chef-client::config'
include_recipe 'chef-client::service'

if node['platform'] != "raspbian"
 # include_recipe 'd.pi-cookbook'
end

include_recipe 'd-base::_resolver'
include_recipe 'd-base::_packages'

%w{ mplayer tmux tree }.each {|p| package p}
