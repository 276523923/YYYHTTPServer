#
# Be sure to run `pod lib lint YYYHTTPServer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name         = 'YYYHTTPServer'
  s.version      = '1.0.0'
  s.summary      = 'YYYHTTPServer'

  s.description  = <<-DESC
                    this is YYYHTTPServer
                   DESC

  s.homepage         = 'https://github.com/276523923/YYYHTTPServer.git'
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { '276523923@qq.com' => 'yyyue@vip.qq.com' }

  s.source       = { :git => 'https://github.com/276523923/YYYHTTPServer.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  # s.static_framework = true

  s.source_files  = "YYYHTTPServer/Classes/**/*.{h,m}"
  s.public_header_files = "YYYHTTPServer/Classes/**/*.h"

  # s.resources = "YYYHTTPServer/Assets/**/*"
  # ss.resource_bundles = {
  #   YYYHTTPServer => ["YYYHTTPServer/Assets/**/*"]
  # }

  # s.dependency ""
end
