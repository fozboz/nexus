#
# Cookbook Name:: nexus_test
# Recipe:: default
#

include_recipe 'nexus'

nexus_user 'testuser' do
  email 'user@example.com'
  password 'secret'
  enabled true
  roles ['wonderland']
  action :create
end

nexus_user 'testuser' do
  email 'bob@example.com'
  action :update
end

nexus_hosted_repository 'free_software' do
  publisher false
  policy 'RELEASE'
end
