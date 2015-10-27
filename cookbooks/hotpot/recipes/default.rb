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
nodejs_npm "express-generator"

include_recipe "postgresql::server"
include_recipe "postgresql::server_dev"
include_recipe "postgresql::client"
include_recipe "postgresql::setup_databases"
include_recipe "postgresql::setup_users"

postgresql_user "hotpot" do
  superuser false
  createdb false
  login true
  replication false
  password "hotpot"
end

postgresql_database "hotpot" do
  owner "hotpot"
  encoding "UTF-8"
  template "template0"
  locale "en_US.UTF-8"
end

