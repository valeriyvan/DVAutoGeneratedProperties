#
# Be sure to run `pod lib lint DVAutoGeneratedProperties.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DVAutoGeneratedProperties'
  s.version          = '0.1.0'
  s.summary          = 'Subclass to get autogenerated properties'
  s.description      = <<-DESC
You only need to override implementation block
which will get selector as argument.
                       DESC

  s.homepage         = 'https://github.com/vdugnist/DVAutoGeneratedProperties'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vdugnist' => 'vdugnist@gmail.com' }
  s.source           = { :git => 'https://github.com/vdugnist/DVAutoGeneratedProperties.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/vdugnist'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DVAutoGeneratedProperties/Classes/**/*'
  s.frameworks = 'Foundation'
end
