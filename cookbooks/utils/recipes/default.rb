#
# Cookbook:: utils
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

yum_package 'curl' do
  action :install
end
