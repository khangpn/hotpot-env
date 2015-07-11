#
# Cookbook Name:: hotpot
# Recipe:: default
#
# Copyright 2015, Khang Phuc Nguyen
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nodejs::nodejs_from_source"
include_recipe "nodejs::npm"

nodejs_npm "express"
