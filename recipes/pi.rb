#
# Cookbook:: d-base
# Recipe:: pi
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# us keyboard
replace_or_add 'us keyboard' do
  path '/etc/default/keyboard'
  pattern 'XKBLAYOUT'
  line 'XKBLAYOUT="US"'
end

replace_or_add 'xkboptions = nocaps' do
  path '/etc/default/keyboard'
  pattern 'XKBOPTIONS'
  line 'XKBOPTIONS=ctrl:nocaps'
end

include_recipe 'n1nj4-users::pi'
