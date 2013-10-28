#
# Cookbook Name:: versionone
# Recipe:: enableiis
#
# Get IIS / ASP.NET up and running
#
# Copyright 2013, VersionOne, Inc.
#
# All rights reserved - Do Not Redistribute
#


# --------------------- install IIS-ASPNET45 -------------------------------------------
%w{
  IIS-WebServerRole
	IIS-WebServer
	IIS-ISAPIFilter
	IIS-ISAPIExtensions
  NetFx4Extended-ASPNET45
  IIS-NetFxExtensibility45
  IIS-ASPNET45
  }.each do |f|
  windows_feature f do
    action :install
  end
end

