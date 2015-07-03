#
# Cookbook Name:: d-base
# Recipe:: home
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

dns_server_options = search(:node, 'tags:dns-server', filter_result: {'ip' => ['ipaddress']})
dns_servers = dns_server_options.collect(&:values).flatten
dns_servers.push '8.8.8.8' # always give me a google DNS
node.default['resolver']['nameservers'] = dns_servers
include_recipe 'resolver'
