#
# Cookbook Name:: workstation-macos
# Recipe:: install_plists
#

node['workstation']['plists'].each do |file|
  mac_os_x_plist_file file
end
