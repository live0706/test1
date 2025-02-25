platform :ios, '10.0'

target 'YourAppTarget' do
  use_frameworks!

  # Pods for YourAppTarget
  pod 'Alamofire', '~> 5.4'
  pod 'SwiftyJSON', '~> 5.0'
  
  # Add Flutter dependencies
  flutter_install_all_ios_pods File.dirname(File.realpath(__FILE__))

end

# Ensure that the Flutter dependencies are installed
post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
  end
end
