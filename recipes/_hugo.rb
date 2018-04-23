
=begin
# notes for next update:
VER=0.40
wget https://github.com/gohugoio/hugo/releases/download/v${VER}/hugo_${VER}_Linux-64bit.deb
HUGO=hugo_${VER}_Linux-64bit.deb
sha256sum $HUGO
aws s3 cp $HUGO s3://n1nj4net-public/ --acl public-read
=end

ver = "0.40"
url = "http://n1nj4net-public.s3-website-us-west-2.amazonaws.com/hugo_#{ver}_Linux-64bit.deb"
sha256sum = '8e7d92af4273f4f7050bec062d9f82fc054fb71968be5a4c2157ea8d348d9073'
# url = "https://github.com/spf13/hugo/releases/download/#{ver}/hugo_#{ver}_Linux-64bit.deb"
# url = 'https://github-cloud.s3.amazonaws.com/releases/11180687/bdfaf734-2fe4-11e7-8c8b-959e88662cc7.deb' 
tmp_file= "/tmp/hugo_#{ver}_Linux-64bit.deb"

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


