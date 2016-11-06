#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
Chef::Log.info('**** Going to create files now ...')

file '/tmp/greeting.txt' do
 content node['my_cookbook']['greeting']
end

file '/tmp/converge_test.txt' do
 content node['my_cookbook']['greeting']
end

file '/tmp/test.txt' do
 content node['my_cookbook']['message']
end

Chef::Log.info('**** File creation done')
