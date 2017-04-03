#
# Cookbook:: d-base
# Recipe:: _scudcloud
#
# Copyright:: 2017, The Authors, All Rights Reserved.



# echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
# apt-get update 

apt_repository 'scudcloud' do
  uri 'ppa:rael-gc/scudcloud'
end

packages = []
packages.push 'scudcloud'
# needed for spelling
# packages.push %w{hunspell-en-us libqtwebkit-qupzillaplugins python3-hunspell}

package packages
