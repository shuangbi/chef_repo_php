#
# Cookbook:: php
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'rpm'

yum_package %w(php72w php72w-cli php72w-fpm php72w-gd php72w-mysql php72w-xml php72w-devel php72w-pecl-redis)  do
  action :install
end
