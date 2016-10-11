#
# Cookbook Name:: chef-platform_docker
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

execute 'update sources' do
  command 'apt-get update'
  action :run
end

include_recipe 'platform_docker::docker'

include_recipe 'platform_docker::groups'
