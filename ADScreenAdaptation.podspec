Pod::Spec.new do |s|
  s.name         = "ADScreenAdaptation"
  s.version      = "1.0.0"
  s.summary      = "iOS支付框架，方便使用"
  s.homepage     = "https://github.com/tiancanfei/ADScreenAdaptation"
  s.license      = "MIT"
  s.authors      = { "天蚕飞" => "bjwltiankong@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/tiancanfei/ADScreenAdaptation.git", :tag => s.version }
  s.source_files  = "ADScreenAdaptation/*.{h,m}"
  s.public_header_files = "ADScreenAdaptation/*.h"
  s.requires_arc        = true
end