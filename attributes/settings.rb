default['mac_os_x']['settings_user'] = node['workstation']['user']
default['mac_os_x']['settings'] = {
  'dock' => {
    'domain' => 'com.apple.dock',
    'autohide' => true,
    'launchanim' => true,
    'magnification' => false,
    'minimize-to-application' => true,
    'tilesize' => 64,
    'showhidden' => true,
    'expose-animation-duration' => 0.1,
    'showMissionControlGestureEnabled' => true,
    'showAppExposeGestureEnabled' => true,
    'showDesktopGestureEnabled' => true,
    'showLaunchpadGestureEnabled' => true
  },
  'trackpad' => {
    'domain' => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    'Clicking' => true,
    'TrackpadRightClick' => true,
    'TrackpadThreeFingerTapGesture' => 2,
    'TrackpadThreeFingerDrag' => false,
    'TrackpadPinch' => true,
    'TrackpadRotate' => true,
    'TrackpadTwoFingerDoubleTapGesture' => true,
    'TrackpadTwoFingerFromRightEdgeSwipeGesture' => 3,
    'TrackpadThreeFingerHorizSwipeGesture' => 2,
    'TrackpadThreeFingerVertSwipeGesture' => 2,
    'TrackpadFourFingerPinchGesture' => 2,
    'TrackpadFourFingerHorizSwipeGesture' => 2,
    'TrackpadFiveFingerPinchGesture' => 2
  },
  'trackpad-extra' => {
    'domain' => 'NSGlobalDomain',
    'com.apple.mouse.tapBehavior' => 1
  },
  'keyboard' => {
    'domain' => 'NSGlobalDomain',
    'AppleKeyboardUIMode' => 3, # Allow tabbing to all controls
    'ApplePressAndHoldEnabled' => false,
    'KeyRepeat' => 2, # Fastest
    'InitialKeyRepeat' => 10,
    'NSAutomaticSpellingCorrectionEnabled' => false,
    'NSUserReplacementItemsEnabled' => false,
    'WebAutomaticSpellingCorrectionEnabled' => false,
    'WebAutomaticTextReplacementEnabled' => false,
    'NSAutomaticDashSubstitutionEnabled' => false,
    'NSAutomaticQuoteSubstitutionEnabled' => false
  },
  'finder' => {
    'domain' => 'com.apple.finder',
    'EmptyTrashSecurely' => true,
    'FXArrangeGroupViewBy' => 'Name',
    'FXPerferredViewStyle' => 'clmv', # Use column view by default
    'ShowExternalHardDrivesOnDesktop' => true,
    'ShowHardDrivesOnDesktop' => true,
    'ShowMountedServersOnDesktop' => true,
    'ShowRemovableMediaOnDesktop' => true,
    '_FXShowPosixPathInTitle' => true,
    'FXEnableExtensionChangeWarning' => false,
    'QLEnableTextSelection' => true,
    'ShowStatusBar' => true,
    'FXDefaultSearchScope' => 'SCcf', # Search current folder
    'NewWindowTarget' => 'PfHm', # Point to home
    'DSDontWriteNetworkStores' => true,
    'OpenWindowForNewRemovableDisk' => true,
    'FXInfoPanesExpanded' => {
      'General' => true,
      'OpenWith' => true,
      'Privileges' => true
    }
  },
  'disk-images' => {
    'domain' => 'com.apple.frameworks.diskimages',
    'skip-verify' => true,
    'skip-verify-locked' => true,
    'skip-verify-remote' => true,
    'auto-open-ro-root' => true,
    'auto-open-rw-root' => true
  },
  'screensaver' => {
    'domain' => 'com.apple.screensaver',
    'askForPassword' => 1,
    'askForPasswordDelay' => 0
  },
  'HiDPI' => {
    'domain' => '/Library/Preferences/com.apple.windowserver',
    'DisplayResolutionEnabled' => true
  },
  'screen-capture' => {
    'domain' => 'com.apple.screencapture',
    'location' => '~/Downloads',
    'type' => 'png',
    'disable-shadow' => true
  },
  'firewall' => {
    'domain' => '/Library/Preferences/com.apple.alf',
    'allowsignedenabled' => true,
    'globalstate' => true,
    'stealthenabled' => true
  },
  'global' => {
    'domain' => 'NSGlobalDomain',
    'NSWindowResizeTime' => 0.001,

    # Save panel tweaks
    'NSNavPanelExpandedStateForSaveMode' => true,
    'PMPrintingExpandedStateForPrint' => true,
    'PMPrintingExpandedStateForPrint2' => true,
    'NSDocumentsSaveNewDocumentsToCloud' => true,

    'NSDisableAutomaticTermination' => true,
    'AppleShowAllExtensions' => true,
    'AppleFontSmoothing' => 2,
    'AppleInterfaceStyle' => 'Dark' # Dark mode
  },
  'menubar' => {
    'domain' => 'com.apple.systemuiserver',
    'menuExtras' => [
      '/Systems/Library/CoreServices/Menu Extras/Displays.menu',
      '/Systems/Library/CoreServices/Menu Extras/Bluetooth.menu',
      '/Systems/Library/CoreServices/Menu Extras/TimeMachine.menu',
      '/Systems/Library/CoreServices/Menu Extras/Airport.menu',
      '/Systems/Library/CoreServices/Menu Extras/Battery.menu',
      '/Systems/Library/CoreServices/Menu Extras/Clock.menu'
    ]
  },
  'clock' => {
    'domain' => 'com.apple.menuextra.clock',
    'FlashDateSeperators' => true,
    'DateFormat' => 'EEE MMM d hh:mm:ss'
  },
  'battery' => {
    'domain' => 'com.apple.menuextra.battery',
    'ShowPercent' => 'YES'
  },
  'printer' => {
    'domain' => 'com.apple.print.PrintPrefs',
    'Quit When Finished' => true
  },
  'updates' => {
    'domain' => 'com.apple.SoftwareUpdate',
    'ScheduleFrequency' => 1
  },
  'bluetooth' => {
    'domain' => 'com.apple.BluetoothAudioAgent',
    'Apple Bitpool Min (editable)' => 40
  },
  'admin-information' => {
    'domain' => '/Library/Preferences/com.apple.loginwindow',
    'AdminHostInfo' => 'HostName'
  },
  'activity-monitor' => {
    'domain' => 'com.apple.ActivityMonitor',
    'ShowCategory' => 100, # Show all processes
    'SortColumn' => 'CPUUsage',
    'SortDirection' => 0,
    'UpdatePeriod' => 2,
    'NetworkGraphType' => 1
  },
  'xcode' => {
    'domain' => 'com.apple.dt.Xcode',
    'DVTTextIndentUsingTabs' => false,
    'AlwaysShowTabBar' => true
  },
  'safari' => {
    'domain' => 'com.apple.Safari',
    'ShowStatusBar' => true,
    'ShowFavoritesBar' => true,
    'ShowFavoritesbar-v2' => true,
    'AlwaysRestoreSessionAtLaunch' => true,
    'NewWindowBehavior' => 1, # Start with empty page
    'NewTabBehavior' => 1, # Start tabs with empy page
    'HomePage' => 'https://www.google.com',
    'AutoOpenSafeDownloads' => false,
    'TabCreationPolicy' => 1, # Automatically use tabs
    'OpenNewTabsInFront' => false,
    'CommandClickMakesTabs' => true,
    'AutoFillPasswords' => false,
    'WarnAboutFraudlentWebsites' => true,
    'DebugSnapshotsUpdatePolicy' => 2,

    # Enable plugins, Java, JS
    'WebKitPluginsEnabled' => true,
    'WebKitJavaEnabled' => true,
    'WebKitJavaScriptEnabled' => true,
    'com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled' => true,
    'com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled' => true,
    'com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptEnabled' => true,

    # Disable JS popups
    'WebKitJavaScriptCanOpenWIndowsAutomatically' => false,
    'com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically' => false,

    'SendDoNotTrackHTTPHeader' => true,
    'CanPromptForPushNotifications' => false,
    'InstallExtensionUpdatesAutomatically' => true,

    # Developer mode
    'IncludeDevelopMenu' => true,
    'WebKitDeveloperExtrasEnabledPreferenceKey' => true,
    'com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled' => true
  },
  'safari-extra' => {
    'domain' => 'NSGlobalDomain',
    'WebKitDeveloperExtras' => true
  },
  'messages' => {
    'domain' => 'com.apple.messageshelper.MessageController',
    'SOInputLineSettings' => {
      'automaticDashSubstitutionEnabled' => false,
      'automaticDataDetectionEnabled' => false,
      'automaticEmojiSubstitutionEnabledLegacy' => false,
      'automaticEmojiSubstitutionEnablediMessage' => false,
      'automaticLinkDetectionEnabled' => false,
      'automaticQuoteSubstitutionEnabled' => true,
      'automaticSpellingCorrectionEnabled' => true,
      'automaticTextReplacementEnabled' => true,
      'continuousSpellCheckingEnabled' => true,
      'grammarCheckingEnabled' => false,
      'smartInsertDeleteEnabled' => true
    }
  },
  'user-settings' => {
    'domain' => 'NSGlobalDomain',

    # Localization
    'AppleLanguages' => ['en'],
    'AppleLocale' => 'en_US@currency=USD',
    'AppleMeasurementUnits' => 'Inches',
    'AppleMetricUnits' => false,
    'AppleICUForce12HourTime' => false,
    'AppleICUForce24HourTime' => true,
    'AppleICUTimeFormatStrings' => {
      '1' => 'HH:mm',
      '2' => 'HH:mm:ss',
      '3' => 'HH:mm:ss z',
      '4' => 'HH:mm:ss v'
    },
    'AppleScrollAnimationEnabled' => true,
    'NSTableViewDefaultsSizeMode' => 1
  }
}
