#
# Cookbook:: composer
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
include_recipe 'utils'


bash 'install_composer' do
  cwd '/tmp'
  code <<-EOH
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
  EOH
  not_if 'test -f /usr/local/bin/composer'
end

