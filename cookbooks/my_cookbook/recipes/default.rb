#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
chef_gem 'ipaddress'
require 'ipaddress'
ip = IPAddress("192.168.0.152/24")
Chef::Log.info("Subnet M4ask of #{ip} is #{ip.netmask}")

ip = '10.10.0.0/18'
mask = netmask(ip) # using the ipaddress_helper library
Chef::Log.info("Netmask of #{ip} is #{mask} - powered by ipaddress_helper")

Chef::Log.info('**** Going to create files now ...')

file '/tmp/greeting.txt' do
  content node['my_cookbook']['greeting']
end

file '/tmp/test.txt' do
  content node['my_cookbook']['message']
end

Chef::Log.info('**** File creation done')

template '/tmp/test2.txt' do 
  source 'test2.erb'
  variables(
    hi: 'Hallo',
    world: 'Welt',
    from: node['fqdn']
  )
end

