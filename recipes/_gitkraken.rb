node.default['gitkraken']['url'] = 'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
node.default['gitkraken']['version'] = '2.0.1'
node.default['gitkraken']['checksum'] = '14afeded24a4e0b2737c0d60917c3965f6cccd4b58c1934e9c45b4a65a7ca5ac'

remote_file ('/tmp/gitkraken-amd64.deb') do
  source node.default['gitkraken']['url']
  owner 'root'
  checksum node.default['gitkraken']['checksum']
end

dpkg_package 'gitkraken' do
  only_if { File.exist?('/tmp/gitkraken-amd64.deb')}
  source '/tmp/gitkraken-amd64.deb'
  action [ :install ]
end
