Pod::Spec.new do |s|
  s.name                  = 'HaloObjC'
  s.version               = '1.2.5'
  s.summary               = 'My own iOS development kit.'
  s.homepage              = 'https://github.com/HaloWang/HaloObjC'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'HaloWang' => 'HaloWang1991@gmail.com' }
  s.source                = { :git => 'https://github.com/HaloWang/HaloObjC.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files          = 'HaloObjC/Classes/**/*'
  s.framework             = "UIKit"
  s.requires_arc          = true
  s.public_header_files   = 'HaloObjC/Classes/**/*.h'
end
