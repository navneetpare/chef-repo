#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
file '/tmp/greeting.txt' do
 content node['my_cookbook']['greeting']
end
