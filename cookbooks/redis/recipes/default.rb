#
# Cookbook:: redis
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
yum_package 'redis' do
  action :install
end

cookbook_file '/etc/redis.conf' do
  owner 'root'
  group 'root'
  mode '0644'
  source 'redis.conf'
  # checksum 'sha256checksum'
end

service 'redis' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end


