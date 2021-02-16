platform :ios, '14.4'

def common_pods
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'
  pod 'FirebaseFirestoreSwift'
  pod 'lottie-ios'
end

target 'DartCounterSwiftUI' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for DartCounterSwiftUI
  common_pods

  target 'DartCounterSwiftUITests' do
    inherit! :search_paths
    # Pods for testing
    common_pods
  end

  target 'DartCounterSwiftUIUITests' do
    # Pods for testing
    common_pods
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end