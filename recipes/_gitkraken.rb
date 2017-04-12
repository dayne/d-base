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
