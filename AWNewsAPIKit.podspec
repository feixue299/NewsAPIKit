#
#  Be sure to run `pod spec lint NewsAPIKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "AWNewsAPIKit"
  spec.version      = "0.0.9"
  spec.summary      = "A NewsAPIKit"
  spec.homepage     = "https://github.com/feixue299/NewsAPIKit"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "wpf" => "1569485690@qq.com" }
  spec.platform     = :ios, "10.0"
  spec.swift_version = '5.0'
  spec.source       = { :git => "https://github.com/feixue299/NewsAPIKit.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources", "Sources/**/*.{swift}"
  spec.requires_arc = true
  spec.dependency "Moya"
end
