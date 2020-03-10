Pod::Spec.new do |spec|

spec.name         = "YJAMap3D"
spec.version      = "0.0.4"
spec.summary      = "YJAMap3D for iOS"
spec.homepage     = "https://github.com/MOyejin/YJAMap3D"
spec.license      = { :type => "MIT", :file => "LICENSE" }
spec.author       = { "MOyejin" => "1976779764@qq.com" }
spec.platform     = :ios, '9.0'
spec.source       = { :git => "https://github.com/MOyejin/YJAMap3D.git", :tag => "#{spec.version}" }
spec.source_files = "YJAMap3D/**/*.{h,m}"
spec.requires_arc = true
spec.static_framework = true
spec.frameworks   = 'UIKit', 'Foundation'
spec.library      = "resolv"

spec.dependency "YJUIKit"
spec.dependency "AMap3DMap"

end
