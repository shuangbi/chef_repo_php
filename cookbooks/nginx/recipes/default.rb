#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "yum"

package 'nginx' do
  action :install
end

bash 'create_web_dir' do
  user 'root'
  cwd '/var/www'
  code <<-EOH
    mkdir -p exchange
    chown -R nginx:nginx exchange
  EOH
  not_if 'test -f /var/www/exchange'
end

service 'nginx' do
  action [ :enable, :start ]
end

# cookbook_file "/usr/share/nginx/www/index.html" do
#   source "index.html"
#   mode "0644"
# end
