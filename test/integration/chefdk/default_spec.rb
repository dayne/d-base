%w(vagrant).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

# atom kinda sucks for checking version - just find it
describe file('/usr/bin/atom') do
  it{ should exist }
end

describe command('terraform --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'Terraform' }
  its('stdout') { should match '0.8.6' }
  its('stderr') { should eq '' }
end

describe command('hab --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'hab ' }
  its('stderr') { should eq '' }
end

describe package('VirtualBox-5.1') do
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
