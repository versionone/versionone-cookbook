#
# Cookbook Name:: versionone
# Recipe:: enablemixed
#
# Enable mixed-mode authentication on SQL server by tweaking a registry key.
#
# Copyright 2013, VersionOne, Inc.
#
# All rights reserved - Do Not Redistribute
#


registry_key node["versionone"]["sqlserver_authmode_regkey"] do
  values [{name: 'LoginMode', type: :dword, data: 2}]
  action :create
end

service "MSSQLSERVER" do
  action :restart
end

file "C:/turn_on_mixed.sql" do
  action :create
  content "
	ALTER LOGIN sa ENABLE ; \r\n
	GO \r\n
	ALTER LOGIN sa WITH PASSWORD = '#{node["versionone"]["sqlserver_password"]}' ; \r\n
	GO \r\n
  "
end

powershell_script "runSql" do
  code "sqlcmd -E -S . -i C:\\turn_on_mixed.sql"
end

file "C:/turn_on_mixed.sql" do
  action :delete
end
