#
# Cookbook Name:: versionone
# Recipe:: installV1
#
# Run the VersionOne chocolatey install to put VersionOne on the system.
#
# Copyright 2013, VersionOne, Inc.
#
# All rights reserved - Do Not Redistribute
#

include_recipe "chocolatey"

chocolatey "VersionOne" do
	action :install
	source node["versionone"]["choc_private_feed"]
end