dns_server_options = search(:node, 'tags:dns-server', filter_result: {'ip' => ['ipaddress']})
dns_servers = dns_server_options.collect(&:values).flatten
dns_servers.push '8.8.8.8' # always give me a google DNS

node.override['resolver']['nameservers'] = dns_servers

include_recipe 'resolver'
