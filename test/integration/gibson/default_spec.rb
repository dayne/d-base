# # encoding: utf-8

# Inspec test for recipe d.pi::garage

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }
    # skip 'This is an example test, replace with your own test.'
  end
end

describe port(80) do
  it { should_not be_listening }
  skip 'This is an example test, replace with your own test.'
end

%w(vagrant vim tilda mumble atom chromium-browser scudcloud
  weechat unity-tweak-tool deluge i3 hugo ).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe file('/usr/bin/steam') do
  it { should exist }
end

describe command('aws --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'aws-cli' }
  its('stderr') { should eq '' }
end

describe command('hab --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'hab ' }
  its('stderr') { should eq '' }
end

describe package('VirtualBox-5.2') do
  it { should be_installed }
end

describe command('virtualbox --help') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'Oracle VM VirtualBox Manager' }
  its('stderr') { should match '' }
end

describe command('/opt/chefdk/bin/chef --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'Chef Development Kit Version' }
  its('stderr') { should match '' }
end

describe package('qgis') do
  it { should be_installed }
  its('version') { should be >= '1:2.18' }
end

describe command('/usr/local/bin/ruby-install') do
  its('stderr') { should match '' }
end

describe file('/usr/local/share/chruby/chruby.sh') do
  it { should exist }
  its('content') { should match '0.3.9' }
end

describe file('/etc/profile.d/chruby.sh') do
  it { should exist }
end

describe command('vagrant --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match '2.0.2' }
  its('stderr') { should match '' }
end

describe command('packer --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match '1.0.0' }
end

describe command('hugo version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'Hugo Static Site Generator' }
end
