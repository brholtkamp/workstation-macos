#
# Cookbook Name:: workstation-macos
# Recipe:: install_mac_app_store_application
#

include_recipe 'mac-app-store::default'

node['workstation']['mac_app_store_applications'].each do |package|
  mac_app_store_app package do
    action :upgrade
  end
end
