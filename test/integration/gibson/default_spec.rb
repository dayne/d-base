# # encoding: utf-8

# Inspec test for recipe d.pi::garage

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }
    #skip 'This is an example test, replace with your own test.'
  end
end

describe port(80) do
  it { should_not be_listening }
  skip 'This is an example test, replace with your own test.'
end

%w(vagrant vim tilda mumble atom chromium-browser).each do |pkg|
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
  its('stderr') { should eq ''}
end

describe command('hab --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match 'hab ' }
  its('stderr') { should eq ''}
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

# TODO verify minecraft
