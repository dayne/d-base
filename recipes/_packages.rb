%w{ mplayer mpg123 tmux tree }.each {|p| package p}

include_recipe 'd-base::_say'

node['n1nj4net']['packages'][node['platform']].each do |p|
  package p
end if node['n1nj4net']['packages'].attribute?(node['platform'])
