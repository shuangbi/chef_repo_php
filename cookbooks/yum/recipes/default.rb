#
# Cookbook:: yum
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
execute 'yum install epel-release' do
  command 'sudo yum -y install epel-release'
end
