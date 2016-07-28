#
# Cookbook Name:: workstation-macos
# Recipe:: setup_shell
#

include_recipe 'workstation-macos::install_homebrew'

# Make sure zsh is installed
homebrew_package 'zsh'
homebrew_package 'font-terminus'

include_recipe 'workstation-common::make_zsh_default'
include_recipe 'workstation-common::install_dotfiles'
