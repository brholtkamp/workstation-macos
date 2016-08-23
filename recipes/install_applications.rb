#
# Cookbook Name:: workstation-macos
# Recipe:: install_application
#

include_recipe 'homebrew::cask'
include_recipe 'homebrew::install_taps'

node['workstation']['applications'].each do |package|
  homebrew_cask package
end
