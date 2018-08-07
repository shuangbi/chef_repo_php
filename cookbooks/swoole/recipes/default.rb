#
# Cookbook:: swoole
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
package 'wget' do
  action :install
end

bash 'install_swoole' do
  cwd "/home/vagrant"
  user "root"
  code <<-EOH
    wget -c https://github.com/swoole/swoole-src/archive/v2.2.0.tar.gz
    tar -zxvf v2.2.0.tar.gz
    cd swoole-src-2.2.0/
    phpize
    ./configure
    make
    make install
  EOH
  not_if "test -f /usr/lib64/php/modules/swoole.so"
end

cookbook_file '/etc/php.d/swoole.ini' do
  source 'swoole.ini'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
