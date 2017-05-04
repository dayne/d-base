name 'd-base'
maintainer 'Dayne Broderson'
maintainer_email 'broderson@gmail.com'
license 'MIT'
description 'Installs/Configures d-base'
long_description 'Installs/Configures d-base'
version '0.4.39'

depends 'chef-client', '~> 7.1'
depends 'resolver', '~> 2.0'
depends 'apt', '~> 5.0'
depends 'chef-sugar', '~> 3.4.0'
depends 'line', '~> 0.6.3'
depends 'packages', '~> 1.0.0'
depends 'openssh', '~> 2.1'

depends 'bash-CVE-2014-7169'
depends 'bash-CVE-2014-6271'

depends 'system', '~> 0.11.2'

depends 'd_devbox'

# misc for gibson
depends 'steam', '~> 2.2.1'             # special branch
depends 'qgis', '~> 0.3.0'
depends 'minecraft-installer-ubuntu', '~> 0.3.0'

depends 'docker', '~> 2.15'

depends 'ruby_install', '~> 1.1.0'      # special branch
depends 'chruby_install', '~> 0.1.3'    # special branch

depends 'n1nj4-users'

depends 'nodejs', '>= 3.0.0'
