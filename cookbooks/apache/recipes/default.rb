#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform_family'] == "debian"
	package = "apache2"
else node['platform_family'] == "rhel"
	package = "httpd"
end

package 'apache2' do
	package_name package
	action :install
end

service 'apache2' do
	action [:start, :enable]
end

