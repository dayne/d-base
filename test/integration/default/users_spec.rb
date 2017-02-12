describe group('home') do
    it { should exist }
    its('gid') { should eq 1200 }
end

describe group('sysadmin') do
    it { should exist }
    its('gid') { should be eq 1337 }
end

describe user('dummy') do
    it { should exist }
    its('groups') { should include 'home' }
end

describe user('admin') do
    it { should exist }
    its('groups') { should include 'sysadmin' }
    its('groups') { should include 'home' }
end

describe user('olduser') do
    it { should_not exist }
end

describe user('outside') do
    it { should_not exist }
end
