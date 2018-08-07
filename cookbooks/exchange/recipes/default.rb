#
# Cookbook:: exchange
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
include_recipe 'unzip'

bash 'create exchange folders' do
  user 'root'
  code <<-EOH
    mkdir -p /home/q
  EOH
end

cookbook_file '/home/q/QFrame.zip' do
  source 'QFrame.zip'
  owner 'root'
  group 'root'
  mode '0644'
end

execute 'unzip' do
  user 'root'
  cwd '/home/q'
  command 'unzip QFrame.zip'
  action :run
end


