#
# Cookbook Name:: workstation-macos
# Recipe:: default
#

include_recipe 'workstation-macos::install_homebrew'

# Set ZSH as the main shell
user node['workstation']['user'] do
  action :modify
  shell '/usr/bin/zsh'
end

include_recipe 'workstation-common::default'
