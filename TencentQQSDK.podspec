#
# Be sure to run `pod lib lint TencentQQSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TencentQQSDK"
  s.version          = "1.9.5"
  s.summary          = "TencentQQSDK"

  s.homepage         = "https://github.com/keyfun/qq_ios_sdk"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "kana_app" => "forever_loss_@hotmail.com" }
  s.source           = { :git => "https://github.com/keyfun/qq_ios_sdk.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*', 'Sources/QQSDK/TencentOpenAPI.framework/Headers/*.h'
  s.resource_bundles = {
    'TencentQQSDK' => ['Pod/Assets/*.png']
  }

  s.resource = 'Sources/**/*.bundle'
  s.ios.vendored_frameworks = 'Sources/**/*.framework'
  s.frameworks = 'CoreImage', 'Photos', 'AssetsLibrary', 'MapKit', 'CoreLocation', 'MobileCoreServices', 'MediaPlayer', 'CoreFoundation', 'SystemConfiguration', 'CoreText', 'QuartzCore', 'Security', 'UIKit', 'Foundation', 'CoreGraphics', 'CoreTelephony'
  s.libraries = 'sqlite3', 'z', 'c++'
end
