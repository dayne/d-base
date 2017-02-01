name 'd-base'
maintainer 'Dayne Broderson'
maintainer_email 'broderson@gmail.com'
license 'MIT'
description 'Installs/Configures d-base'
long_description 'Installs/Configures d-base'
version '0.3.12'

depends 'chef-client' , '~> 7.1'
depends 'resolver', '~> 2.0'
depends 'apt' , '~> 5.0'
depends 'chef-sugar', '~> 3.4.0'
depends 'line', '~> 0.6.3'
depends 'packages', '~> 1.0.0'
depends 'openssh', '~> 2.1'

depends 'bash-CVE-2014-7169'
depends 'bash-CVE-2014-6271'

depends 'system', '~> 0.11.2'

depends 'steam', '~> 2.2.1'
depends 'atom', '~> 0.2.0'

depends 'chef-dk', '~> 3.1.0'
depends 'minecraft-installer-ubuntu', '~> 0.3.0'
depends 'terraform', '~> 1.0'
depends 'vagrant'
depends 'virtualbox', '~> 2.0'
depends 'habitat', '~> 0.2.0'
depends 'ark'
