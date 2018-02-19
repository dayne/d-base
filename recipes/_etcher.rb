#
# Cookbook:: d-base
# Recipe:: _etcher
#
# Sets up the apt repo for debian/ubuntu etcher
# https://github.com/resin-io/etcher
# Then installs etcher
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_repository 'etcher' do
  uri 'https://dl.bintray.com/resin-io/debian'
  components ['stable', 'etcher']
  keyserver 'hkp://pgp.mit.edu:80'
  key '379CE192D401AB61'
  distribution ''
end

package 'etcher-electron'
