
#
# Cookbook Name:: workstation-macos
# Recipe:: install_mac_app_store_applications
#

include_recipe 'homebrew::default'

homebrew_package 'mas'
homebrew_package 'reattach-to-user-namespace'

execute 'mas signin' do
  command "reattach-to-user-namespace mas signin #{node['workstation']['mas']['email']} '#{node['workstation']['mas']['password']}'"
  user node['workstation']['user']
end

node['workstation']['mas']['applications'].each do |app|
  execute "mas install #{app}" do
    user node['workstation']['user']
  end
end

execute 'mas signout' do
  command 'reattach-to-user-namespace mas signout'
  sensitive true
  user node['workstation']['user']
end
