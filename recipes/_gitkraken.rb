node.default['gitkraken']['url'] = \
             'https://release.gitkraken.com/linux/gitkraken-amd64.deb'
node.default['gitkraken']['version'] = '2.2.1'

# curl https://release.gitkraken.com/linux/gitkraken-amd64.deb  | sha256sum
node.default['gitkraken']['checksum'] = \
   '167fa11239283174bff09e8e03b5cb018811e9af1c22a7129517939f6de3a551' # v2.2.1
  # '321f4a58a7426a690e3af8c5d0729deb2882db721c6e0eb7948a12021500eb00' # v2.2.0
  # 'bc0f454bf840634a88a47d1c5d5c0491d6c3e9d3bbde0dc8ed592690c62b145c' # v2.1.0
  # '14afeded24a4e0b2737c0d60917c3965f6cccd4b58c1934e9c45b4a65a7ca5ac' # v2.0.1

version = node.default['gitkraken']['version']
remote_file ("/tmp/gitkraken-amd64-#{version}.deb") do
  source node.default['gitkraken']['url']
  owner 'root'
  checksum node.default['gitkraken']['checksum']
end

dpkg_package 'gitkraken' do
  only_if { File.exist?("/tmp/gitkraken-amd64-#{version}.deb")}
  source "/tmp/gitkraken-amd64-#{version}.deb"
  action [ :install, :upgrade ]
end
