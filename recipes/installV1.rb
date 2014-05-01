#
# Cookbook Name:: versionone
# Recipe:: installV1
#
# Run the VersionOne chocolatey install to put VersionOne on the system.
#
# Copyright 2014, VersionOne, Inc.
#

include_recipe "chocolatey"

chocolatey "VersionOne" do
	action :install
	source "https://www.myget.org/F/versionone/"
end