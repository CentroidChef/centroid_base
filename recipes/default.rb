#
# Cookbook:: centroid_base
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
template '/etc/hosts' do
    source 'hosts.erb'
end