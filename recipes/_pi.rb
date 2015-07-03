# us keyboard
replace_or_add "us keyboard" do
  path "/etc/default/keyboard"
  pattern "XKBLAYOUT"
  line 'XKBLAYOUT="US"'
end

include_recipe 'd-base::_say'

node.default['packages'].merge!( {
  'dnsutils'  => 'install', 
  'mpg123'    => 'install',
  'mplayer'   => 'install'
}

include_recipe 'packages::default'
