#
# Cookbook Name:: workstation-macos
# Recipe:: install_games
#

include_recipe 'homebrew::cask'

node['workstation']['games'].each do |package|
  homebrew_cask package
end
