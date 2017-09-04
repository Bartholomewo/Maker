#
# Be sure to run `pod lib lint Maker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Maker'
  s.version          = '0.1.3'
  s.summary          = 'Maker是一个使用链式思想快速创建UIKit的框架'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Maker 是一个使用链式语法实现UIKit控件的Category，快速开发，代码量少，使用方便。
                       DESC

  s.homepage         = 'https://github.com/Bartholomewo/Maker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bartholomewo' => 'kuma15@163.com' }
  s.source           = { :git => 'https://github.com/Bartholomewo/Maker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Maker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Maker' => ['Maker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
