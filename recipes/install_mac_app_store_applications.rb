#
# Cookbook Name:: workstation-macos
# Recipe:: install_mac_app_store_application
#

mac_app_store_mas 'setting up mas' do
  username node['mac_app_store']['username']
  password node['mac_app_store']['password']
  action %i(install sign_in upgrade)
end

node['workstation']['mac_app_store_applications'].each do |package|
  mac_app_store_app package
end
