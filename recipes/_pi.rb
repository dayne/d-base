# adafruit apt repo
apt_repository 'adafruit' do
  uri "http://apt.adafruit.com/raspbian/"
  components ['main']
  key 'https://apt.adafruit.com/apt.adafruit.com.gpg.key'
  distribution 'wheezy'
  action [:remove, :add]
end

# us keyboard
replace_or_add "us keyboard" do
  path "/etc/default/keyboard"
  pattern "XKBLAYOUT"
  line 'XKBLAYOUT="US"'
end

include_recipe 'd-base::_say'

node.default['packages'].merge!( {
  'mplayer'    => 'install',
  'git-core'   => 'install',
  'build-essential' => 'install',
  'libi2c-dev' => 'install',  # for WiringPi libraryies
  'node'       => 'install',
  'nodejs'     => 'install',
  'wiringpi'   => 'install',
  'python-dev' => 'install',
  'python-pip' => 'install',
  'bison'      => 'install'
})
