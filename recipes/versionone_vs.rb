#
# Cookbook Name:: Visual Studio 2012 with Update 3
# Recipe:: visualstudio
#
# Installs the dev tools required by the VersionOne Visual Studio Client
#
# Copyright 2013, VersionOne, Inc.
#
# All rights reserved - Do Not Redistribute

include_recipe "chocolatey"

chocolatey "VersionOne.Client.VisualStudio" do
	action :install
	source node["versionone"]["choc_private_feed"]
end
