#
# Cookbook Name:: d-base
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


#include_recipe "chef-client"


include_recipe 'chef-client::config'
include_recipe 'chef-client::service'
