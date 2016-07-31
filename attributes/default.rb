default['workstation']['applications'] = %w(1password alfred ccleaner dropbox flux google-chrome keepingyouawake skype slack spotify the-unarchiver visual-studio-code)
default['workstation']['mac_app_store_applications'] = %w(reeder)
default['workstation']['games'] = %w(battle-net steam)

# Mac App Store
default['mac_app_store']['username'] = ENV['apple_user']
default['mac_app_store']['password'] = ENV['apple_pass']
