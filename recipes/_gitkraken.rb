node.default['gitkraken']['url'] = \
             'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
node.default['gitkraken']['version'] = '2.1.0'
# sha256sum
node.default['gitkraken']['checksum'] = \
    'bc0f454bf840634a88a47d1c5d5c0491d6c3e9d3bbde0dc8ed592690c62b145c' # v2.1.0
  # '14afeded24a4e0b2737c0d60917c3965f6cccd4b58c1934e9c45b4a65a7ca5ac' # v2.0.1

remote_file ("/tmp/gitkraken-amd64-2.1.0.deb") do
  source node.default['gitkraken']['url']
  owner 'root'
  checksum node.default['gitkraken']['checksum']
end

dpkg_package 'gitkraken' do
  only_if { File.exist?('/tmp/gitkraken-amd64-2.1.0.deb')}
  source '/tmp/gitkraken-amd64-2.1.0.deb'
  action [ :install, :upgrade ]
end
