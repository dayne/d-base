

ver = "0.20.7"
url = "http://n1nj4net-public.s3-website-us-west-2.amazonaws.com/hugo_#{ver}_Linux-64bit.deb"
# url = "https://github.com/spf13/hugo/releases/download/#{ver}/hugo_#{ver}_Linux-64bit.deb"
# url = 'https://github-cloud.s3.amazonaws.com/releases/11180687/bdfaf734-2fe4-11e7-8c8b-959e88662cc7.deb' 
tmp_file= "/tmp/hugo_#{ver}_Linux-64bit.deb"
sha256sum = '29757538da41d69081501c93fc5c47f2b374a8e990305ab14a2a954264a67c7d'

remote_file ( tmp_file ) do
  source url
  owner 'root'
  checksum sha256sum
end

dpkg_package 'hugo' do
  only_if { File.exist?( tmp_file ) } 
  version ver
  source tmp_file
  action [ :install, :upgrade ]
end


