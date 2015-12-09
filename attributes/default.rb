default['composer']['install_dir'] = '/usr/local/bin'
default['composer']['filename'] = 'composer'
default['composer']['version'] = nil
default['composer']['executable'] = "#{node['composer']['install_dir']}/#{node['composer']['filename']}"
