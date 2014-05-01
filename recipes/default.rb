#
# Cookbook Name:: versionone
# Recipe:: default
#
# Configure IIS and SQL prerequisites and install VersionOne
#
# Copyright 2014, VersionOne, Inc.

include_recipe "versionone::enableiis"
include_recipe "versionone::enablemixed"
include_recipe "versionone::installV1"