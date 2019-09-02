#
#  Be sure to run `pod spec lint OCComponent.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "OCComponent"
  s.version      = "0.0.2"
  s.summary      = "iOS OC component"

  s.description  = <<-DESC
  ios Common component
                   DESC

  s.homepage     = "https://github.com/guohongqi-china/OCComponent"
  s.license      = "MIT"
  s.author             = { "guohongqi-china" => "820003039@qq.com" }
  s.ios.deployment_target = '10.0'

  s.source       = { :git => "https://github.com/guohongqi-china/OCComponent.git", :tag => s.version.to_s }

  s.public_header_files = "OCComponent/OCComponent.h"
  s.source_files  = "OCComponent/OCComponent.h"
  s.requires_arc = true

  pch_AF = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif

EOS
  s.prefix_header_contents = pch_AF
  s.ios.deployment_target = '8.0'

  s.subspec 'Component' do |ss|
    ss.source_files = 'OCComponent/Component/**/*.{h,m}'
    ss.public_header_files = 'OCComponent/Component/**/*.{h}'
    ss.watchos.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.osx.frameworks = 'CoreServices'
  end

end
