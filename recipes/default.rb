#
# Cookbook Name:: go
# Recipe:: default
#
# Copyright 2012, Tim Dysinger, Apache 2.0
#

include_recipe 'ark'

ark 'go' do
  url "#{node[:go][:url]}/go-#{node[:go][:version]}-#{node[:platform]}-#{node[:platform_version]}.tar.gz"
  version node[:go][:version]
  append_env_path true
end
