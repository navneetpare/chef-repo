#
# Cookbook Name:: lwrpexample
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
lwrpexample 'this_name_doesn\'t_matter' do
  message "woohoo"
  action :roll_back
end
