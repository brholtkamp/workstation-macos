#
# Cookbook Name:: workstation-macos
# Recipe:: setup_shell
#

include_recipe 'workstation-macos::install_homebrew'

# Make sure zsh is installed
homebrew_package 'zsh'

# Install default font
homebrew_tap 'caskroom/fonts'
homebrew_cask 'font-terminus'

include_recipe 'workstation-common::make_zsh_default'
include_recipe 'workstation-common::install_dotfiles'
