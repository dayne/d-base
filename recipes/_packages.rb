
node['n1nj4net']['packages'][node['platform']].each do |p|
  package p
end if node['n1nj4net']['packages'].attribute?(node['platform'])
