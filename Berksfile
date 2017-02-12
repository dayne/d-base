source 'https://supermarket.chef.io'
source :chef_server

metadata

# having to hack in my own branches until the main repo updates
cookbook 'terraform', git: 'https://github.com/dayne/chef-terraform.git', branch: 'zipfile_fix'
cookbook 'virtualbox', git: 'https://github.com/dayne/virtualbox-cookbook', branch: '51update'

cookbook 'steam', git: 'https://github.com/dayne/steam-chef.git', branch: 'update_apt'
