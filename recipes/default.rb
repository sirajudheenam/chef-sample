#
# Cookbook Name:: chef-sample
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

myuser = node[:chef-sample][:the_owner]   

directory node[:chef-sample][:the_dirname] do
  owner     myuser
  group     myuser
  mode      node[:chef-sample][:the_perms]
  action    :create
end