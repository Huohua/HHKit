Pod::Spec.new do |s|
  s.name                  = "HHKit"
  s.version               = "0.1.2"
  s.summary               = "HHKit"
  s.homepage              = "https://github.com/Huohua/HHKit/"
  s.license               = 'MIT'
  s.author                = { "刘白光" => "light@huohua.in" }
  s.platform              = :ios
  s.ios.deployment_target = '6.0'
  s.source                = { :git => "https://github.com/Huohua/HHKit.git", :tag => s.version }
  s.source_files          = 'Controller', 'Core', 'Other', 'View', 'HHKit.h' 
  s.requires_arc          = true
end
