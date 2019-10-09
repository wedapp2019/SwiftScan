Pod::Spec.new do |s|
  s.name             = 'JLSwiftScan'
  s.version          = '1.2.5'
  s.summary          = 'A simple way to use camera to scan QR Code.'
 
  s.homepage         = 'https://github.com/janlionly/SwiftScan'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'janlionly' => 'janlionly@gmail.com' }
  s.source           = { :git => 'https://github.com/janlionly/SwiftScan.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/janlionly'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'SwiftScanner/*'
  s.frameworks = 'UIKit', 'AVFoundation'
  s.swift_versions = ['4.2', '5.0']
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
end