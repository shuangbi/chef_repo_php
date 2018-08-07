#
# Cookbook:: rpm
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

rpm_package 'webtatic-release' do
  action :upgrade
  source "https://mirror.webtatic.com/yum/el7/webtatic-release.rpm"
end
