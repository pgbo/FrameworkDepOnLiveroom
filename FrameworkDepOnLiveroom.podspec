#
# Be sure to run `pod lib lint FrameworkDepOnLiveroom.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FrameworkDepOnLiveroom'
  s.version          = '0.1.2'
  s.summary          = 'Test framework depend on zego live room sdk'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "FrameworkDepOnLiveroom test dependency on zego liev room sdk."

  s.homepage         = 'https://github.com/pgbo/FrameworkDepOnLiveroom'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pgbo' => 'jeffreypeng@zego.im' }
  s.source           = { :git => 'https://github.com/pgbo/FrameworkDepOnLiveroom.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'FrameworkDepOnLiveroom/Classes/**/*'
  
  # 不支持 i386
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7 armv7s x86_64' }
  
  # s.resource_bundles = {
  #   'FrameworkDepOnLiveroom' => ['FrameworkDepOnLiveroom/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'PGBZegoLiveRoom'
end
