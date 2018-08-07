#
# Cookbook:: mysql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
bash 'install_mysql_server' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    wget http://repo.mysql.com/mysql57-community-release-el7-8.noarch.rpm
    rpm -ivh mysql57-community-release-el7-8.noarch.rpm
    yum -y install mysql-server
    /bin/systemctl start mysqld.service
  EOH
end
