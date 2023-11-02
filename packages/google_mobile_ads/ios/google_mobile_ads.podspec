#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'google_mobile_ads'
  s.version          = '1.0.4'
  s.summary          = 'Google Mobile Ads plugin for Flutter.'
  s.description      = <<-DESC
Google Mobile Ads plugin for Flutter.
                       DESC
  s.homepage         = 'https://github.com/googleads/googleads-mobile-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Flutter Team' => 'flutter-dev@googlegroups.com' }
  s.source           = { :path => '.' }
  s.ios.source_files = 'Classes/**/*.{h,m}'
  s.ios.public_header_files = 'Classes/**/*.h'
  s.tvos.source_files = 'Classes/**/FLTGoogleMobileAdsPlugin.{h,m}',
  s.tvos.public_header_files = 'Classes/**/FLTGoogleMobileAdsPlugin.h'
  s.dependency 'Flutter'
  s.ios.dependency 'Google-Mobile-Ads-SDK','~> 10.9.0'
  s.ios.dependency 'webview_flutter_wkwebview'
  s.platforms = { :ios => "10.0", :tvos => "12.0" }
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.static_framework = true
  s.ios.resource_bundles = {
   'google_mobile_ads' => ['Classes/**/*.xib']
  }

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/**/*.{h,m}'
    test_spec.dependency 'OCMock','3.6'
  end
end
