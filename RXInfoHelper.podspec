

Pod::Spec.new do |s|
  s.name     = "RXInfoHelper"
  s.version  = "0.1"
  s.license  = "MIT"
  s.summary  = "RXInfoHelper is a simple bundle info"
  s.homepage = "https://github.com/xzjxylophone/RXInfoHelper"
  s.author   = { 'Rush.D.Xzj' => 'xzjxylophoe@gmail.com' }
  s.social_media_url = "http://weibo.com/xzjxylophone"
  s.source   = { :git => 'https://github.com/xzjxylophone/RXInfoHelper.git', :tag => "v#{s.version}" }
  s.description = %{
       RXInfoHelper is a simple bundle info.
  }
  s.source_files = 'RXInfoHelper/*.{h,m}'
  s.frameworks = 'Foundation', 'UIKit'
  s.requires_arc = true
  s.platform = :ios, '5.0'

end

