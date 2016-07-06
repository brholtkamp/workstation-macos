#
# Cookbook Name:: workstation-macos
# Recipe:: default
#
# Copyright (c) 2016 Brian Holtkamp, All Rights Reserved.

%w(git tig vim zsh).each do |package|
  package package
end
