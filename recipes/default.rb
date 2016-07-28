#
# Cookbook Name:: workstation-macos
# Recipe:: default
#

include_recipe 'workstation-macos::install_homebrew'
include_recipe 'workstation-macos::setup_shell'
include_recipe 'workstation-common::default'
