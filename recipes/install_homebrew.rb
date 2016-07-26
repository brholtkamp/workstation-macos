#
# Cookbook Name:: workstation-macos
# Recipe:: install_homebrew
#

include_recipe 'homebrew::default'

node['workstation']['packages'].each do |package|
  homebrew_package package
end
