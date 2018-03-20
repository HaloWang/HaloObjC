Pod::Spec.new do |s|
  s.name         = "HaloObjC"
  s.version      = "0.3.8"
  s.summary      = "My own iOS development kit."
  s.homepage     = "https://github.com/HaloWang/HaloObjC"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "王策" => "634692517@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { 
    :git => "https://github.com/HaloWang/HaloObjC.git", 
    :tag => s.version }
  s.source_files = "HaloObjC/*.{h,m}"
  s.framework    = "UIKit"
  s.requires_arc = true
end
