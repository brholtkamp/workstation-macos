#
# Cookbook Name:: workstation-macos
# Recipe:: set_system_settings
#

include_recipe 'mac_os_x::settings'

node['workstation']['commands'].each do |command|
  execute "executing #{command}" do
    command command
    user node['workstation']['user']
  end
end
