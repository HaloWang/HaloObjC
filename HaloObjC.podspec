
Pod::Spec.new do |s|

  s.name         = "HaloObjC"
  s.version      = "0.0.1"
  s.homepage     = "http://EXAMPLE/HaloObjC"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = "MIT"
  s.author             = { "王策" => "634692517@qq.com" }
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "http://EXAMPLE/HaloObjC.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.framework  = "UIKit"
  s.requires_arc = true
  # s.public_header_files = "Classes/**/*.h"
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  
end
