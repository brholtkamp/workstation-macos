
#
# Cookbook Name:: workstation-macos
# Recipe:: install_mac_app_store_applications
#

include_recipe 'homebrew::default'

homebrew_package 'mas'

execute 'mas signin' do
  command "mas signin #{node['workstation']['mas']['email']} '#{node['workstation']['mas']['password']}'"
  sensitive true
end

node['workstation']['mas']['applications'].each do |app|
  execute "mas install #{app}"
end

execute "mas signout" do
  command 'mas signout'
  sensitive true
end
