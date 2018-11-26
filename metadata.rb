name 'd-base'
maintainer 'Dayne Broderson'
maintainer_email 'broderson@gmail.com'
license 'MIT'
description 'Installs/Configures d-base'
long_description 'Installs/Configures d-base'
version '0.6.0'

depends 'chef-client'
depends 'resolver'
depends 'apt'
depends 'chef-sugar'
depends 'line'
depends 'packages'
depends 'openssh'


depends 'bash-CVE-2014-7169'
depends 'bash-CVE-2014-6271'

depends 'system'

depends 'd_devbox'

# misc for gibson
#
depends 'qgis'

depends 'docker'

depends 'ruby_install', '~> 1.1.0'      # special branch
depends 'chruby_install', '~> 0.1.3'    # special branch

depends 'n1nj4-users'

depends 'nodejs'
depends 'steam', '~> 2.2.1'             # special branch
