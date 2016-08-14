#
# Cookbook Name:: workstation-macos
# Recipe:: install_mac_app_store_applications
#

include_recipe 'homebrew::default'

%w(mas reattach-to-user-namespace).each do |pack|
  homebrew_package pack
end

execute 'mas signin' do
  command "reattach-to-user-namespace mas signin #{node['workstation']['mas']['email']} '#{node['workstation']['mas']['password']}'"
  user node['workstation']['user']
  sensitive true
  returns [0,7]
end

execute 'mas upgrade' do
  command 'mas upgrade'
  user node['workstation']['user']
end

node['workstation']['mas']['applications'].each do |number, fileName|
  execute "mas install #{fileName}" do
    command "reattach-to-user-namespace mas install #{number}"
    user node['workstation']['user']
    not_if { ::Dir.exist?("/Applications/#{fileName}.app/") }
  end
end

#mac_app_store_mas 'mas signin' do
#  source :homebrew
#  username node['workstation']['mas']['email']
#  password node['workstation']['mas']['password']
#  system_user node['workstation']['user']
#  use_rtun true
#  action %i(install sign_in upgrade upgrade_apps)
#end
#
#node['workstation']['mas']['applications'].each do |app, fileName|
#  mac_app_store_app "install #{app}" do
#    app_name app
#    system_user node['workstation']['user']
#    use_rtun true
#    action :install
#    not_if { ::Dir.exist?("/Applications/#{fileName}.app/") }
#  end
#end
#
#
# TODO: https://github.com/RoboticCheese/mac-app-store-chef/issues/41
#mac_app_store_mas 'mas signout' do
#  source :homebrew
#  username node['workstation']['mas']['email']
#  password node['workstation']['mas']['password']
#  system_user node['workstation']['user']
#  use_rtun true
#  action :sign_out
#end
