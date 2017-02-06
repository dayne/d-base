cookbook_file 'say' do
  owner 'root'
  group 'root'
  mode '0755'
  path '/usr/local/bin/say'
  action :create
end

package 'mpg123'
