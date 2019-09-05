
Pod::Spec.new do |spec|

  spec.name         = "MyTestSDK"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of MyTestSDK."

# SDK的描述，这个是必不可少的。格式如下所示：
  spec.description  = <<-DESC
                   MyTestSDK是一个简单的测试SDK,自己测试用的

#这个网址，本来应该是写你这个SDK的地址，但是自己用于测试的，可以随便填写个。个人认为这homepage可以随便写，只要不为空就好，
  spec.homepage     = "https://www.baidu.com"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

#通行证，一般就选择下面示例就好，必须要写的
  spec.license      = ":type => "MIT", :file => "FILE_LICENSE""
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

#作者信息
  spec.author             = { "lvyanhui" => "http://git.cdoboe.com" }
  # Or just: spec.author    = "lvyanhui"
  # spec.authors            = { "lvyanhui" => "http://git.cdoboe.com" }
  # spec.social_media_url   = "https://twitter.com/lvyanhui"
#这个可以不用管，就按照初始值就好了
  spec.source       = { :git => "http://EXAMPLE/MyTestSDK.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"



  spec.static_framework = true
  spec.requires_arc = true
  spec.platform     = :ios, '9.0'
  spec.ios.vendored_frameworks = 'MyTestSDK.framework'

#下面是你SDK中所依赖的库，一定要写上，不要漏掉了
spec.dependency 'MJRefresh'
spec.dependency 'SDCycleScrollView'
spec.dependency 'SDWebImage'

end
