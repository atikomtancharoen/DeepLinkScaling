# Uncomment this line to define a global platform for your project
platform :ios, '14.0'

# Uncomment this line if you're using Swift
use_frameworks!

# ignore all warnings from all pods
inhibit_all_warnings!

workspace 'DeepLinkScaling.xcworkspace'

# ----------------------------------------------------------------------------------- Define Pods

######################################################
# Networking --------------------------------------- #
######################################################
def default_networking_pods

end

# ----------------------------------------------------------------------------------- Targets / Modules / Features

###########################
# MainApp ------- #
###########################
target 'MainApp' do
  project 'MainApp/MainApp.xcodeproj'
end

###########################
# Core ------------------ #
###########################
target 'Core' do
  project 'Core/Core.xcodeproj'

  # target 'ChatCafeTests' do
  #   inherit! :search_paths
  #   chat_cafe_pods
  #   snapshot_test_pods
  # end
end

# ----------------------------------------------------------------------------------- Configure Pods

post_install do |pi|
    pi.pods_project.build_configurations.each do |config|
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
    end
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
        config.build_settings['APPLICATION_EXTENSION_API_ONLY'] = 'NO'
        config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'
        config.build_settings['CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER'] = 'NO'
        config.build_settings["ONLY_ACTIVE_ARCH"] = "YES"
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
        config.build_settings.delete('IPHONEOS_DEPLOYMENT_TARGET')
      end
    end
end
