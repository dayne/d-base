describe file('/etc/default/keyboard') do
  it { should exist }
  its('content') { should match 'XKBLAYOUT="US"' }
end

describe file('/etc/default/keyboard') do
  it { should exist }
  its('content') { should match 'ctrl:nocaps' }
end
