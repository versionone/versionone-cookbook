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

chocolatey "VisualStudio2012Professional" do
	action :install
end

chocolatey "Dogtail.V2012.3" do
	action :install
end