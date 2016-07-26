#
# Cookbook Name:: workstation-macos
# Recipe:: install_application
#

include_recipe 'homebrew::cask'

node['workstation']['applications'].each do |package|
  homebrew_cask package
end
