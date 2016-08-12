#
# Cookbook Name:: workstation-macos
# Recipe:: install_mac_app_store_applications
#

include_recipe 'homebrew::default'

mac_app_store_mas 'setup mas' do
  source :homebrew
  username node['workstation']['mas']['email']
  password node['workstation']['mas']['password']
  system_user node['workstation']['user']
  use_rtun true
  action %i(install sign_in upgrade upgrade_apps)
end

node['workstation']['mas']['applications'].each do |app|
  mac_app_store_app "install #{app}" do
    app_name app
    system_user node['workstation']['user']
    use_rtun true
    action :install
    not_if { ::Dir.exist?("/Applications/#{app}.app/") }
  end
end
