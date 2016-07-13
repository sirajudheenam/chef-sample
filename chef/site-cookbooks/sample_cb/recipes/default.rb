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

# platform
# platform_family
# value_for_platform
# value_for_platform_family
#- #{node[:platform_family]}
case node[:platform]
  when 'redhat' , 'centos'
    file "/tmp/os.txt" do
      content "#{node[:platform]}"
    end
end
