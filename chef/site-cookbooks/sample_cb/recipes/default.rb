#
# Cookbook Name:: chef-sample
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

myuser = node[:sample_cb][:the_owner]   

directory node[:sample_cb][:the_dirname] do
  owner     myuser
  group     myuser
  mode      node[:sample_cb][:the_perms]
  action    :create
end
