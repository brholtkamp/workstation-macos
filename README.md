# workstation-macos

The macOS cookbook that's part of the [workstation-common](https://github.com/brholtkamp/workstation-common) system.  This cookbook is responsible for all macOS specific recipes and delegating the attributes from workstation-common into the appropriate resource providers for macOS.

# Recipes

## Core Recipes

- `default`: Will install [Homebrew](https://brew.sh), [Homebrew Cask]("https://caskroom.io"), [ChefDK](https://downloads.chef.io/chef-dk), the dotfiles from workstation-common into the MSYS2 environment, sets up the shell, and registers [chef-client](https://github.com/chef-cookbooks/chef-client) as a service to run on the macOS node.
- `install_homebrew`: Will install Homebrew and all packages from workstation-common.

## Application Recipes

- `install_applications`: Will install core applications.
- `install_games`: Will install game software.
- `install_mac_app-store_applications`: Will install applications from the Mac App Store.

## Extra Recipes

- `install_plists`: Will install `.plist` files from the `files/default` path.
- `set_system_settings`: Will set user settings using the macOS `defaults` application.
- `setup_shell`: Will install [zsh]("https://zsh.org"), install [terminus font]("https://terminus-font.sourceforge.net/"), and copy over dotfiles into the user's home directory.

# Attributes

- `node['workstation']['applications']`: The list of applications to install.
- `node['workstation']['commands']`: Commands to run when Chef runs.
- `node['workstation']['games']`: The list of game applications to install.
- `node['workstation']['plists']`: The list of `.plist` files to copy into the user's settings.
- `node['workstation']['mas']['applications']`: A list of `['application name', 'Application.app filename']` containing applications to install from the Mac App Store.
- `node['workstation']['mas']['email']`: Email address to use to log into the Mac App Store.
- `node['workstation']['mas']['password']`: Password of account to use to log into the Mac App Store.

## [`mac_os_x` attributes]("https://github.com/chef-osx/mac_os_x")
- `node['mac_os_x']['settings']`: Map consisting of settings to set for the user using `defaults`.
- `node['mac_os_x']['settings_user']`: User to install set settings for.