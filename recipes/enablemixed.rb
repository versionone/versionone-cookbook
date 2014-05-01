#
# Cookbook Name:: versionone
# Recipe:: enablemixed
#
# Enable mixed-mode authentication on SQL server by tweaking a registry key.
#
# Copyright 2014, VersionOne, Inc.
#

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQLServer' do
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
	ALTER LOGIN sa WITH PASSWORD = 'Versi0n1.' ; \r\n
	GO \r\n
  "
end

powershell_script "runSql" do
  code "sqlcmd -E -S . -i C:\\turn_on_mixed.sql"
end

file "C:/turn_on_mixed.sql" do
  action :delete
end