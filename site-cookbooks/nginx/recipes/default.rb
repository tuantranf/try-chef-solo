#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "nginx" do
	action :install
end

service "nginx" do
	action [ :enable, :start ]
end

template "nginx.conf" do
	path "/etc/nginx/nginx.conf"
	owner "root"
	group "root"
	mode 0644

	notifies :reload, 'service[nginx]'
end
